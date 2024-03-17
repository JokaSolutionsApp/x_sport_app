import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'josn_keys/auth_keys.dart';

@JsonSerializable()
class LevelEntity extends Equatable {
  @JsonKey(name: AuthKeys.levelName)
  final String levelName;
  @JsonKey(name: AuthKeys.levelMaxPoints)
  final int levelMaxPoints;

  const LevelEntity({
    required this.levelName,
    required this.levelMaxPoints,
  });

  @override
  List<Object?> get props => [levelName, levelMaxPoints];
}
