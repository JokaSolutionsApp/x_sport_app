import 'package:json_annotation/json_annotation.dart';
import '../../domain/enitites/floor_entity.dart';

part 'floor_model.g.dart';

@JsonSerializable()
class FloorModel extends FloorEntity {
  const FloorModel({
    required super.floorId,
    required super.sportId,
    required super.sportName,
    required super.floorName,
    required super.numPlayers,
  });

  factory FloorModel.fromJson(Map<String, dynamic> json) =>
      _$FloorModelFromJson(json);

  Map<String, dynamic> toJson() => _$FloorModelToJson(this);
}
