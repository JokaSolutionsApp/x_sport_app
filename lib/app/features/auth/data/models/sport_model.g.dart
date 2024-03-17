// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sport_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SportModel _$SportModelFromJson(Map<String, dynamic> json) => SportModel(
      sportId: json['sportId'] as int,
      name: json['sportName'] as String,
    );

Map<String, dynamic> _$SportModelToJson(SportModel instance) =>
    <String, dynamic>{
      'sportId': instance.sportId,
      'sportName': instance.name,
    };
