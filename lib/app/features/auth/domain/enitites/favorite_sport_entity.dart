import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'josn_keys/auth_keys.dart';
import 'level_entity.dart';
import 'sport_preference_entity.dart';

@JsonSerializable()
class FavoriteSportEntity extends Equatable {
  @JsonKey(name: AuthKeys.sportId)
  final int id;
  @JsonKey(name: AuthKeys.sportName)
  final String name;
  @JsonKey(name: AuthKeys.isCurrentState)
  final bool isCurrentState;
  @JsonKey(name: AuthKeys.points)
  final int points;
  @JsonKey(name: AuthKeys.levelPercent)
  final double levelPercent;
  @JsonKey(name: AuthKeys.userLevel)
  final String userLevel;
  @JsonKey(name: AuthKeys.numOfMatches)
  final int numOfMatches;
  @JsonKey(name: AuthKeys.levels)
  final List<LevelEntity> levels;
  @JsonKey(name: AuthKeys.preferences)
  final List<SportPreferenceEntity> preferences;

  const FavoriteSportEntity({
    required this.id,
    required this.name,
    required this.isCurrentState,
    required this.points,
    required this.levelPercent,
    required this.userLevel,
    required this.numOfMatches,
    required this.levels,
    required this.preferences,
  });

  @override
  List<Object?> get props => [id, name, isCurrentState, preferences];
}
