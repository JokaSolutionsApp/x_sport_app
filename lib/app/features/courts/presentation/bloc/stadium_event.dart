part of 'stadium_bloc.dart';

@freezed
class StadiumEvent with _$StadiumEvent {
  const factory StadiumEvent.getNearByStadiums({required StadiumPrams params}) =
      _GetNearByStadiumsEvent;
  const factory StadiumEvent.getFriendsStadiums(
      {required StadiumPrams params}) = _GetFriendsStadiumsEvent;
  const factory StadiumEvent.getAboutStadium({required int StadiumId}) =
      _GetAboutStadiumEvent;
}
