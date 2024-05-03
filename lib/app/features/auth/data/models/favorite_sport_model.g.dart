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
      points: json['points'] as int,
      levelPercent: (json['levelPercent'] as num).toDouble(),
      userLevel: json['userLevel'] as String,
      numOfMatches: json['numOfMatchs'] as int,
      levels: (json['levels'] as List<dynamic>)
          .map((e) => LevelModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      preferences: (json['preferences'] as List<dynamic>)
          .map((e) => SportPreferenceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FavoriteSportModelToJson(FavoriteSportModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'isCurrentState': instance.isCurrentState,
      'points': instance.points,
      'levelPercent': instance.levelPercent,
      'userLevel': instance.userLevel,
      'numOfMatchs': instance.numOfMatches,
      'levels': instance.levels,
      'preferences': instance.preferences,
    };
