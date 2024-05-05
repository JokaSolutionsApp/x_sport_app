import 'package:bloc/bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:x_sport/app/features/match/domain/enitites/params/match_reservation_params.dart';
import 'package:x_sport/app/features/match/domain/enitites/work_days_entity.dart';

import '../../../../../core/constance/app_functions.dart';
import '../../../../../core/error/failure.dart';
import '../../domain/enitites/reservation_entity.dart';
import '../../domain/enitites/sport_entity.dart';
import '../../domain/enitites/sport_stadium_entity.dart';
import '../../domain/usecase/get_reserved_times_usecase.dart';
import '../../domain/usecase/get_sport_stadium_usecase.dart';
import '../../domain/usecase/get_sports_usecase.dart';
import '../../domain/usecase/reserve_usecase.dart';

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
        changeTimes: (event) async => await changeTimes(event, emit),
        reserve: (event) async => await _reserve(event, emit),
      );
    });
  }

  List<SportEntity>? sports;
  List<SportStadiumEntity>? stadiums;
  List<ReservationEntity>? times;
  List<WorkDaysEntity>? openDays;
  List<String> openTimes = [];
  int? stadiumFloorId;
  String? reservationDate;
  String? reservatonTimeFrom;
  String? reservatonTimeTo;
  bool isFirst = true;

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
        add(
          _GetStadiumsEvent(
            params: StadiumParams(
              sportId: sports![0].sportId,
              pageNumber: 0,
              pageSize: 10,
            ),
          ),
        );
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
        openDays = success[0].stadiumWorkDays;
        stadiumFloorId = success[0].floors[0].floorId;
        openTimes = [];
        for (var element in openDays!) {
          if (element.dayOrder == 6) {
            final openAt = DateFormat("HH:mm:ss").parse(element.openAt);
            final closeAt = DateFormat("HH:mm:ss").parse(element.closeAt);
            final durationInMinutes =
                (closeAt.difference(openAt).inMinutes / 1.5).ceil();
            final timeSlots = List<String>.generate(
              durationInMinutes + 1,
              (index) => openAt
                  .add(Duration(minutes: index * 90))
                  .toString()
                  .substring(11, 16),
            );
            openTimes = timeSlots;
          }
        }
        add(_GetTimesEvent(
            params:
                ReserviedTimesParams(stadiumFloorId: stadiums![0].stadiumId)));
      },
    );
  }

  Future<void> _getTimes(event, Emitter<MatchReservationState> emit) async {
    EasyLoadingInit.startLoading();
    if (!isFirst) {
      times = [];
      openDays = [];
      openTimes = [];
      for (var element in stadiums!) {
        if (element.stadiumId == event.params.stadiumId) {
          openDays = element.stadiumWorkDays;
        }
      }
      for (var element in openDays!) {
        if (element.dayOrder == 0) {
          final openAt = DateFormat("HH:mm:ss").parse(element.openAt);
          final closeAt = DateFormat("HH:mm:ss").parse(element.closeAt);
          final durationInMinutes =
              (closeAt.difference(openAt).inMinutes / 1.5).ceil();
          final timeSlots = List<String>.generate(
            durationInMinutes + 1,
            (index) => openAt
                .add(Duration(minutes: index * 90))
                .toString()
                .substring(11, 16),
          );
          openTimes = timeSlots;
        }
      }
    }
    isFirst = false;
    final result = await getReservedTimesUseCase(params: event.params);
    await EasyLoading.dismiss();
    result.fold(
      (fail) async {
        emit(MatchReservationState.timesFailure(failure: fail));
      },
      (success) {
        times = success;
        emit(
          MatchReservationState.timesSuccess(
            reservations: times!,
            openTimes: openTimes,
          ),
        );
      },
    );
  }

  Future<void> changeTimes(event, Emitter<MatchReservationState> emit) async {
    if (event.stadiumId != null) {
      for (var element in stadiums!) {
        if (element.stadiumId == event.stadiumId) {
          openDays = element.stadiumWorkDays;
        }
      }
    }
    openTimes = [];
    for (var element in openDays!) {
      if (element.dayOrder == event.dayOrder) {
        final openAt = DateFormat("HH:mm:ss").parse(element.openAt);
        final closeAt = DateFormat("HH:mm:ss").parse(element.closeAt);
        final durationInMinutes =
            (closeAt.difference(openAt).inMinutes / 1.5).ceil();
        final timeSlots = List<String>.generate(
          durationInMinutes + 1,
          (index) => openAt
              .add(Duration(minutes: index * 90))
              .toString()
              .substring(11, 16),
        );
        openTimes = timeSlots;
      }
    }
    emit(
      MatchReservationState.timesSuccess(
        reservations: times ?? [],
        openTimes: openTimes,
      ),
    );
  }

  Future<void> _reserve(event, Emitter<MatchReservationState> emit) async {
    EasyLoadingInit.startLoading();
    final result = await createReservationUseCase(
      params: ReservationParams(
        reservationDate: reservationDate,
        reservatonTimeFrom: reservatonTimeFrom,
        reservatonTimeTo: reservatonTimeTo,
        stadiumFloorId: stadiumFloorId,
      ),
    );
    await EasyLoading.dismiss();
    result.fold(
      (fail) async {
        EasyLoading.showError(fail.message);
        // emit(MatchReservationState.sportsFailure(failure: fail));
      },
      (success) {
        EasyLoading.showSuccess(
            'reservation has been made on $reservationDate time $reservatonTimeFrom ');
      },
    );
  }
}
