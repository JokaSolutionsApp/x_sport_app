import 'package:json_annotation/json_annotation.dart';
import 'converter/sport_preference_value_converter.dart';
import 'sport_preference_value_model.dart';
import '../../domain/enitites/sport_preference_entity.dart';

part 'sport_preference_model.g.dart';

@JsonSerializable(converters: [SportPregernceValueJsonConverter()])
class SportPreferenceModel extends SportPreferenceEntity {
  const SportPreferenceModel({
    required int sportPreferenceId,
    required String sportPreferenceName,
    required List<SportPreferenceValueModel> sportPreferenceValues,
    required int selectedPreferenceValueId,
  }) : super(
          sportPreferenceId: sportPreferenceId,
          sportPreferenceName: sportPreferenceName,
          sportPreferenceValues: sportPreferenceValues,
          selectedPreferenceValueId: selectedPreferenceValueId,
        );

  factory SportPreferenceModel.fromJson(Map<String, dynamic> json) =>
      _$SportPreferenceModelFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$SportPreferenceModelToJson(this);
}
