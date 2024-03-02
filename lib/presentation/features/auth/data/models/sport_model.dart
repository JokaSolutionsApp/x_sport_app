import 'package:json_annotation/json_annotation.dart';
import 'package:x_sport/presentation/features/auth/domain/enitites/sport_entity.dart';

part 'sport_model.g.dart';

@JsonSerializable()
class SportModel extends SportEntity {
  const SportModel({
    required super.sportId,
    required super.name,
  });

  factory SportModel.fromJson(Map<String, dynamic> json) =>
      _$SportModelFromJson(json);

  Map<String, dynamic> toJson() => _$SportModelToJson(this);
}
