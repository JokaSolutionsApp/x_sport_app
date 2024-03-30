part of 'stadium_bloc.dart';

@freezed
class StadiumState with _$StadiumState {
  const factory StadiumState.initial() = _Initial;

  // Get Sports Membership
  const factory StadiumState.getNearByStadiumsLoading() =
      _GetNearByStadiumsLoading;
  const factory StadiumState.getNearByStadiumsFailure({
    @Default(null) Failure? failure,
  }) = _GetNearByStadiumsFailure;
  const factory StadiumState.nearByStadiumsFetched({
    @Default([]) List<StadiumEntity> nearByStadiums,
  }) = _NearByStadiumsFetched;

  // Get Suggested Academies
  const factory StadiumState.getFriendsStadiumsLoading() =
      _GetFriendsStadiumsLoading;
  const factory StadiumState.getFriendsStadiumsFailure({
    @Default(null) Failure? failure,
  }) = _GetFriendsStadiumsFailure;
  const factory StadiumState.friendsStadiumsFetched({
    @Default([]) List<StadiumEntity> friendsStadiums,
  }) = _FriendsStadiumsFetched;

  // Get About Stadium
  const factory StadiumState.getAboutStadiumLoading() = _GetAboutStadiumLoading;
  const factory StadiumState.getAboutStadiumFailure({
    @Default(null) Failure? failure,
  }) = _GetAboutStadiumFailure;
  const factory StadiumState.aboutStadiumFetched({
    @Default(null) AboutStadiumEntity? aboutStadium,
  }) = _AboutStadiumFetched;
}
