// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_sport_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FavoriteSportModel _$FavoriteSportModelFromJson(Map<String, dynamic> json) =>
    FavoriteSportModel(
      id: json['id'] as int,
      name: json['name'] as String,
      isCurrentState: json['isCurrentState'] as bool,
      preferences: (json['preferences'] as List<dynamic>)
          .map((e) => SportPreferenceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FavoriteSportModelToJson(FavoriteSportModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'isCurrentState': instance.isCurrentState,
      'preferences': instance.preferences,
    };
