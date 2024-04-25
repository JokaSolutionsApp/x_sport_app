import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import '../../../../../core/constance/json_keys.dart';

@JsonSerializable()
class ReservationEntity extends Equatable {
  @JsonKey(name: ReservationKeys.day)
  final String day;
  @JsonKey(name: ReservationKeys.date)
  final String date;
  @JsonKey(name: ReservationKeys.isWholeDayReserved)
  final bool isWholeDayReserved;
  @JsonKey(name: ReservationKeys.reservedHours)
  final List<String> reservedHours;
  const ReservationEntity({
    required this.day,
    required this.date,
    required this.isWholeDayReserved,
    required this.reservedHours,
  });

  @override
  List<Object?> get props => [
        day,
        date,
        isWholeDayReserved,
        reservedHours,
      ];
}
