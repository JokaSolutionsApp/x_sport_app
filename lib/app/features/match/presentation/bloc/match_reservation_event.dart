part of 'match_reservation_bloc.dart';

@freezed
class MatchReservationEvent with _$MatchReservationEvent {
  const factory MatchReservationEvent.getSports() = _GetSportsEvent;
  const factory MatchReservationEvent.getStadiums(
      {required StadiumParams params}) = _GetStadiumsEvent;
  const factory MatchReservationEvent.getTimes(
      {required ReserviedTimesParams params}) = _GetTimesEvent;
}
