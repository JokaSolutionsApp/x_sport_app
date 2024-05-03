import 'package:json_annotation/json_annotation.dart';
import '../../domain/enitites/sport_preference_value_entity.dart';

part 'sport_preference_value_model.g.dart';

@JsonSerializable()
class SportPreferenceValueModel extends SportPreferenceValueEntity {
  const SportPreferenceValueModel({
    required int sportPreferenceValueId,
    required String sportPreferenceValueName,
  }) : super(
          sportPreferenceValueId: sportPreferenceValueId,
          sportPreferenceValueName: sportPreferenceValueName,
        );

  factory SportPreferenceValueModel.fromJson(Map<String, dynamic> json) =>
      _$SportPreferenceValueModelFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$SportPreferenceValueModelToJson(this);
}
