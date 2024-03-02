import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:x_sport/presentation/features/auth/data/models/sport_model.dart';
import 'package:x_sport/presentation/features/auth/domain/enitites/sport_entity.dart';

class SportJsonConverter
    extends JsonConverter<SportEntity, Map<String, dynamic>> {
  const SportJsonConverter();

  @override
  SportEntity fromJson(Map<String, dynamic> json) => SportModel.fromJson(json);

  @override
  Map<String, dynamic> toJson(SportEntity object) =>
      (object as SportModel).toJson();
}
