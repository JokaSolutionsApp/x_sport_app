part of 'match_reservation_bloc.dart';

@freezed
abstract class MatchReservationState with _$MatchReservationState {
  const factory MatchReservationState.initial() = _Initial;

  const factory MatchReservationState.loading() = loading;

  // Sports
  const factory MatchReservationState.sportsFailure({
    @Default(null) Failure? failure,
  }) = sportsFailure;
  const factory MatchReservationState.sportsScuccess({
    @Default([]) List<SportEntity> sports,
  }) = sportsScuccess;

  // Courts
  const factory MatchReservationState.courtsFailure({
    @Default(null) Failure? failure,
  }) = courtsFailure;
  const factory MatchReservationState.courtsScuccess({
    @Default([]) List<SportStadiumEntity> stadiums,
  }) = courtsScuccess;

  // Times
  const factory MatchReservationState.timesFailure({
    @Default(null) Failure? failure,
  }) = timesFailure;
  const factory MatchReservationState.timesSuccess({
    @Default([]) List<ReservationEntity> reservations,
    @Default([]) List<String> openTimes,
  }) = timesSuccess;
}
