import 'package:json_annotation/json_annotation.dart';
import '../../domain/enitites/level_entity.dart';

part 'level_model.g.dart';

@JsonSerializable()
class LevelModel extends LevelEntity {
  const LevelModel({required super.levelName, required super.levelMaxPoints});

  factory LevelModel.fromJson(Map<String, dynamic> json) =>
      _$LevelModelFromJson(json);

  Map<String, dynamic> toJson() => _$LevelModelToJson(this);
}
