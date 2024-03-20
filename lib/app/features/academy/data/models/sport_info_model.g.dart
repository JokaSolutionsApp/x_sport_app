// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sport_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SportInfoModel _$SportInfoModelFromJson(Map<String, dynamic> json) =>
    SportInfoModel(
      sportId: json['sportId'] as int,
      name: json['name'] as String,
    );

Map<String, dynamic> _$SportInfoModelToJson(SportInfoModel instance) =>
    <String, dynamic>{
      'sportId': instance.sportId,
      'name': instance.name,
    };
