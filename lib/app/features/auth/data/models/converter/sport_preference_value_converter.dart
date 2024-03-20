import 'package:freezed_annotation/freezed_annotation.dart';
import '../sport_preference_value_model.dart';
import '../../../domain/enitites/sport_preference_value_entity.dart';

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
