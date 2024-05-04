import 'package:json_annotation/json_annotation.dart';

import '../../domain/enitites/favorite_sport_entity.dart';
import 'level_model.dart';
import 'sport_preference_model.dart';

part 'favorite_sport_model.g.dart';

@JsonSerializable()
class FavoriteSportModel extends FavoriteSportEntity {
  const FavoriteSportModel({
    required super.id,
    required super.name,
    required super.isCurrentState,
    required super.points,
    required super.levelPercent,
    required super.userLevel,
    required super.numOfMatches,
    required List<LevelModel> super.levels,
    required List<SportPreferenceModel> super.preferences,
  });

  factory FavoriteSportModel.fromJson(Map<String, dynamic> json) =>
      _$FavoriteSportModelFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$FavoriteSportModelToJson(this);
}
