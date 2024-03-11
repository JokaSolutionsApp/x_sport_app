// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_sport_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrentSportModel _$CurrentSportModelFromJson(Map<String, dynamic> json) =>
    CurrentSportModel(
      currentSportId: json['currentSportId'] as int,
      points: json['points'] as int,
      levelPercent: (json['levelPercent'] as num).toDouble(),
      userLevel: json['userLevel'] as String,
      numOfMatches: json['numOfMatchs'] as int,
      levels: (json['levels'] as List<dynamic>)
          .map((e) => LevelModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CurrentSportModelToJson(CurrentSportModel instance) =>
    <String, dynamic>{
      'currentSportId': instance.currentSportId,
      'points': instance.points,
      'levelPercent': instance.levelPercent,
      'userLevel': instance.userLevel,
      'numOfMatchs': instance.numOfMatches,
      'levels': instance.levels,
    };
