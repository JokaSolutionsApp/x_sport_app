// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReservationModel _$ReservationModelFromJson(Map<String, dynamic> json) =>
    ReservationModel(
      day: json['day'] as String,
      date: json['date'] as String,
      isWholeDayReserved: json['isWholeDayReserved'] as bool,
      reservedHours: (json['reservedHours'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$ReservationModelToJson(ReservationModel instance) =>
    <String, dynamic>{
      'day': instance.day,
      'date': instance.date,
      'isWholeDayReserved': instance.isWholeDayReserved,
      'reservedHours': instance.reservedHours,
    };
