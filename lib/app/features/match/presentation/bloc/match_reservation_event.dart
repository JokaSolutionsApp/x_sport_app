part of 'match_reservation_bloc.dart';

@freezed
abstract class MatchReservationEvent with _$MatchReservationEvent {
  const factory MatchReservationEvent.getSports() = _GetSportsEvent;
  const factory MatchReservationEvent.getStadiums(
      {required StadiumParams params}) = _GetStadiumsEvent;
  const factory MatchReservationEvent.getTimes(
      {required ReserviedTimesParams params}) = _GetTimesEvent;
  const factory MatchReservationEvent.changeTimes({
    required int dayOrder,
    int? stadiumId,
  }) = _ChangeTimesEvent;
  const factory MatchReservationEvent.reserve() = _ReserveEvent;
}
