// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sport_preference_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SportPreferenceModel _$SportPreferenceModelFromJson(
        Map<String, dynamic> json) =>
    SportPreferenceModel(
      sportPreferenceId: json['sportPreferenceId'] as int,
      sportPreferenceName: json['sportPreferenceName'] as String,
      sportPreferenceValues: (json['sportPreferenceValues'] as List<dynamic>)
          .map((e) =>
              SportPreferenceValueModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      selectedPreferenceValueId: json['selectedPreferenceValueId'] as int,
    );

Map<String, dynamic> _$SportPreferenceModelToJson(
        SportPreferenceModel instance) =>
    <String, dynamic>{
      'sportPreferenceId': instance.sportPreferenceId,
      'sportPreferenceName': instance.sportPreferenceName,
      'sportPreferenceValues': instance.sportPreferenceValues
          .map(const SportPregernceValueJsonConverter().toJson)
          .toList(),
      'selectedPreferenceValueId': instance.selectedPreferenceValueId,
    };
