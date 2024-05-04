// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_days_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorkDaysModel _$WorkDaysModelFromJson(Map<String, dynamic> json) =>
    WorkDaysModel(
      dayOrder: json['dayOrder'] as int,
      dayName: json['dayName'] as String,
      openAt: json['openAt'] as String,
      closeAt: json['closeAt'] as String,
    );

Map<String, dynamic> _$WorkDaysModelToJson(WorkDaysModel instance) =>
    <String, dynamic>{
      'dayOrder': instance.dayOrder,
      'dayName': instance.dayName,
      'openAt': instance.openAt,
      'closeAt': instance.closeAt,
    };
