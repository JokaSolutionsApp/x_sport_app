import 'package:json_annotation/json_annotation.dart';
import '../../domain/enitites/reservation_entity.dart';

part 'reservation_model.g.dart';

@JsonSerializable()
class ReservationModel extends ReservationEntity {
  const ReservationModel({
    required super.day,
    required super.date,
    required super.isWholeDayReserved,
    required super.reservedHours,
  });

  factory ReservationModel.fromJson(Map<String, dynamic> json) =>
      _$ReservationModelFromJson(json);

  Map<String, dynamic> toJson() => _$ReservationModelToJson(this);
}
