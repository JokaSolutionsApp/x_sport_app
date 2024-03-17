import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:x_sport/app/features/auth/data/models/sport_preference_value_model.dart';
import 'package:x_sport/app/features/auth/domain/enitites/sport_preference_value_entity.dart';

class SportPregernceValueJsonConverter
    extends JsonConverter<SportPreferenceValueEntity, Map<String, dynamic>> {
  const SportPregernceValueJsonConverter();

  @override
  SportPreferenceValueEntity fromJson(Map<String, dynamic> json) =>
      SportPreferenceValueModel.fromJson(json);

  @override
  Map<String, dynamic> toJson(SportPreferenceValueEntity object) =>
      (object as SportPreferenceValueModel).toJson();
}
