import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:x_sport/app/features/courts/domain/enitites/about_stadium_entity.dart';
import 'package:x_sport/app/features/courts/domain/enitites/params/stadium_params.dart';
import 'package:x_sport/app/features/courts/domain/enitites/stadiums_entity.dart';
import 'package:x_sport/app/features/courts/domain/usecase/get_about_stadium_usecase.dart';
import 'package:x_sport/app/features/courts/domain/usecase/get_friends_stadiums_usecase.dart';
import 'package:x_sport/app/features/courts/domain/usecase/get_near_by_stadiums_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../core/error/failure.dart';
part 'stadium_event.dart';
part 'stadium_state.dart';
part 'stadium_bloc.freezed.dart';

@singleton
class StadiumBloc extends Bloc<StadiumEvent, StadiumState> {
  final GetNearByStadiumsCase getNearByStadiumsCase;
  final GetFreindsStadiumsCase getFreindsStadiumsCase;
  final GetAboutStadiumUseCase getAboutStadiumUseCase;

  StadiumBloc(
    this.getFreindsStadiumsCase,
    this.getNearByStadiumsCase,
    this.getAboutStadiumUseCase,
  ) : super(const StadiumState.initial()) {
    on<StadiumEvent>((event, emit) async {
      await event.map(
        getFriendsStadiums: (event) async =>
            await _getFriendsStadiums(event, emit),
        getNearByStadiums: (event) async =>
            await _getNearByStadiums(event, emit),
        getAboutStadium: (event) async => await _getAboutStadium(event, emit),
      );
    });
  }

  Future<void> _getNearByStadiums(event, Emitter<StadiumState> emit) async {
    event as _$GetNearByStadiumsEventImpl;
    print('bloc _getNearByStadiums');

    emit(const StadiumState.getNearByStadiumsLoading());
    final result = await getNearByStadiumsCase(params: event.params);
    result.fold((f) {
      emit(StadiumState.getNearByStadiumsFailure(failure: f));
    }, (r) {
      print('bloc _getNearByStadiums $r');

      emit(StadiumState.nearByStadiumsFetched(nearByStadiums: r));
    });
  }

  Future<void> _getFriendsStadiums(event, Emitter<StadiumState> emit) async {
    event as _$GetFriendsStadiumsEventImpl;
    print('bloc _getFriendsStadiums');

    emit(const StadiumState.getFriendsStadiumsLoading());
    final result = await getFreindsStadiumsCase(params: event.params);
    result.fold((f) {
      emit(StadiumState.getFriendsStadiumsFailure(failure: f));
    }, (r) {
      print('bloc _getFriendsStadiums $r');

      emit(StadiumState.friendsStadiumsFetched(friendsStadiums: r));
    });
  }

  Future<void> _getAboutStadium(event, Emitter<StadiumState> emit) async {
    event as _$GetAboutStadiumEventImpl;
    emit(const StadiumState.getAboutStadiumLoading());
    final result = await getAboutStadiumUseCase(stadiumId: event.StadiumId);
    result.fold((f) {
      emit(StadiumState.getAboutStadiumFailure(failure: f));
    }, (r) {
      print(' _getAboutStadium $r');

      emit(StadiumState.aboutStadiumFetched(aboutStadium: r));
    });
  }
}
