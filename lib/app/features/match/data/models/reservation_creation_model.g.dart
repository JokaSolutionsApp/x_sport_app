// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservation_creation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReservationCreationModel _$ReservationCreationModelFromJson(
        Map<String, dynamic> json) =>
    ReservationCreationModel(
      reservationDate: json['reservationDate'] as int,
      reservatonTimeFrom: json['reservatonTimeFrom'] as int,
      reservatonTimeTo: json['reservatonTimeTo'] as int,
      stadiumFloorId: json['stadiumFloorId'] as int,
    );

Map<String, dynamic> _$ReservationCreationModelToJson(
        ReservationCreationModel instance) =>
    <String, dynamic>{
      'reservationDate': instance.reservationDate,
      'reservatonTimeFrom': instance.reservatonTimeFrom,
      'reservatonTimeTo': instance.reservatonTimeTo,
      'stadiumFloorId': instance.stadiumFloorId,
    };
