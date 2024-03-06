import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:x_sport/app/features/auth/domain/enitites/josn_keys/auth_keys.dart';

@JsonSerializable()
class CurrentSportEntity extends Equatable {
  @JsonKey(name: AuthKeys.currentSportId)
  final int currentSportId;
  @JsonKey(name: AuthKeys.points)
  final int points;
  @JsonKey(name: AuthKeys.levelPercent)
  final double levelPercent;
  @JsonKey(name: AuthKeys.userLevel)
  final String userLevel;
  @JsonKey(name: AuthKeys.numOfMatches)
  final int numOfMatches;

  const CurrentSportEntity({
    required this.currentSportId,
    required this.points,
    required this.levelPercent,
    required this.userLevel,
    required this.numOfMatches,
  });

  @override
  List<Object?> get props =>
      [currentSportId, points, levelPercent, userLevel, numOfMatches];
}
