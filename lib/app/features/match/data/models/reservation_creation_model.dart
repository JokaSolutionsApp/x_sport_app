import 'package:json_annotation/json_annotation.dart';
import '../../domain/enitites/reservation_creation_entity.dart';

part 'reservation_creation_model.g.dart';

@JsonSerializable()
class ReservationCreationModel extends ReservationCreationEntity {
  const ReservationCreationModel({
    required super.reservationDate,
    required super.reservatonTimeFrom,
    required super.reservatonTimeTo,
    required super.stadiumFloorId,
  });

  factory ReservationCreationModel.fromJson(Map<String, dynamic> json) =>
      _$ReservationCreationModelFromJson(json);

  Map<String, dynamic> toJson() => _$ReservationCreationModelToJson(this);
}
