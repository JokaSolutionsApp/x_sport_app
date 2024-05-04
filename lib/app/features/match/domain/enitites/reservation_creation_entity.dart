import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import '../../../../../core/constance/json_keys.dart';

@JsonSerializable()
class ReservationCreationEntity extends Equatable {
  @JsonKey(name: ReservationCreationKeys.reservationDate)
  final int reservationDate;
  @JsonKey(name: ReservationCreationKeys.reservatonTimeFrom)
  final int reservatonTimeFrom;
  @JsonKey(name: ReservationCreationKeys.reservatonTimeTo)
  final int reservatonTimeTo;
  @JsonKey(name: ReservationCreationKeys.stadiumFloorId)
  final int stadiumFloorId;

  const ReservationCreationEntity({
    required this.reservationDate,
    required this.reservatonTimeFrom,
    required this.reservatonTimeTo,
    required this.stadiumFloorId,
  });

  @override
  List<Object?> get props => [
        reservationDate,
        reservatonTimeFrom,
        reservatonTimeTo,
        stadiumFloorId,
      ];
}
