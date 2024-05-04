import 'package:freezed_annotation/freezed_annotation.dart';
import '../floor_model.dart';
import '../../../domain/enitites/floor_entity.dart';

class FloorJsonConverter
    extends JsonConverter<FloorEntity, Map<String, dynamic>> {
  const FloorJsonConverter();

  @override
  FloorEntity fromJson(Map<String, dynamic> json) => FloorModel.fromJson(json);

  @override
  Map<String, dynamic> toJson(FloorEntity object) =>
      (object as FloorModel).toJson();
}
