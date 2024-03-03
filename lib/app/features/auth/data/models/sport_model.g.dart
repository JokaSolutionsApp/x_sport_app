// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sport_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SportModel _$SportModelFromJson(Map<String, dynamic> json) => SportModel(
      sportId: json['sports/sportId'] as int,
      name: json['sports/name'] as String,
    );

Map<String, dynamic> _$SportModelToJson(SportModel instance) =>
    <String, dynamic>{
      'sports/sportId': instance.sportId,
      'sports/name': instance.name,
    };
