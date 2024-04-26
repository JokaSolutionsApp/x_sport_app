import 'package:bloc/bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:x_sport/app/features/match/domain/usecase/reserve_usecase.dart';

import '../../../../../core/constance/app_functions.dart';
import '../../../../../core/error/failure.dart';
import '../../../academy/domain/enitites/params/acedemy_params.dart';
import '../../domain/enitites/reservation_entity.dart';
import '../../domain/enitites/sport_entity.dart';
import '../../domain/enitites/sport_stadium_entity.dart';
import '../../domain/usecase/get_reserved_times_usecase.dart';
import '../../domain/usecase/get_sport_stadium_usecase.dart';
import '../../domain/usecase/get_sports_usecase.dart';

part 'match_reservation_bloc.freezed.dart';
part 'match_reservation_event.dart';
part 'match_reservation_state.dart';

class MatchReservationBloc
    extends Bloc<MatchReservationEvent, MatchReservationState> {
  final GetReservedTimesUseCase getReservedTimesUseCase;
  final GetsportStadiumUseCase getsportStadiumUseCase;
  final GetStadiumSportsUseCase getSportsUseCase;
  final ReserveUseCase createReservationUseCase;

  MatchReservationBloc(
    this.getReservedTimesUseCase,
    this.getsportStadiumUseCase,
    this.getSportsUseCase,
    this.createReservationUseCase,
  ) : super(const MatchReservationState.initial()) {
    on<MatchReservationEvent>((event, emit) async {
      await event.map(
        getSports: (event) async => await _getSports(event, emit),
        getStadiums: (event) async => await _getStadiums(event, emit),
        getTimes: (event) async => await _getTimes(event, emit),
        reserve: (event) async => await _reserve(event, emit),
      );
    });
  }

  List<SportEntity>? sports;
  List<SportStadiumEntity>? stadiums;
  List<ReservationEntity>? times;

  Future<void> _getSports(event, Emitter<MatchReservationState> emit) async {
    event as _$GetSportsEventImpl;
    emit(const MatchReservationState.loading());
    final result = await getSportsUseCase();
    result.fold(
      (fail) async {
        await EasyLoading.dismiss();
        emit(MatchReservationState.sportsFailure(failure: fail));
      },
      (success) {
        sports = success;
        add(_GetStadiumsEvent(
            params: StadiumParams(
                sportId: sports![0].sportId, pageNumber: 0, pageSize: 10)));
      },
    );
  }

  Future<void> _getStadiums(event, Emitter<MatchReservationState> emit) async {
    final result = await getsportStadiumUseCase(params: event.params);
    result.fold(
      (fail) async {
        await EasyLoading.dismiss();
        emit(MatchReservationState.courtsFailure(failure: fail));
      },
      (success) {
        stadiums = success;
        add(_GetTimesEvent(
            params:
                ReserviedTimesParams(stadiumFloorId: stadiums![0].stadiumId)));
      },
    );
  }

  Future<void> _getTimes(event, Emitter<MatchReservationState> emit) async {
    EasyLoadingInit.startLoading();
    final result = await getReservedTimesUseCase(params: event.params);
    await EasyLoading.dismiss();
    result.fold(
      (fail) async {
        emit(MatchReservationState.timesFailure(failure: fail));
      },
      (success) {
        times = success;
        emit(MatchReservationState.timesScuccess(reservations: times!));
      },
    );
  }

  Future<void> _reserve(event, Emitter<MatchReservationState> emit) async {
    event as _$GetSportsEventImpl;
    emit(const MatchReservationState.loading());
    // final result = await createReservationUseCase();
    // result.fold(
    //   (fail) async {
    //     await EasyLoading.dismiss();
    //     emit(MatchReservationState.sportsFailure(failure: fail));
    //   },
    //   (success) {
    //     add(_GetStadiumsEvent(
    //         params: StadiumParams(
    //             sportId: sports![0].sportId, pageNumber: 0, pageSize: 10)));
    //   },
    // );
  }
}
