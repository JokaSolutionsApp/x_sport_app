import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:x_sport/app/features/auth/domain/enitites/josn_keys/auth_keys.dart';
import 'package:x_sport/app/features/auth/domain/enitites/sport_preference_value_entity.dart';

@JsonSerializable()
class SportPreferenceEntity extends Equatable {
  @JsonKey(name: AuthKeys.sportPreferenceId)
  final int sportPreferenceId;
  @JsonKey(name: AuthKeys.sportPreferenceName)
  final String sportPreferenceName;
  @JsonKey(name: AuthKeys.sportPreferenceValues)
  final List<SportPreferenceValueEntity> sportPreferenceValues;
  @JsonKey(name: AuthKeys.selectedPreferenceValueId)
  final int selectedPreferenceValueId;

  const SportPreferenceEntity({
    required this.sportPreferenceId,
    required this.sportPreferenceName,
    required this.sportPreferenceValues,
    required this.selectedPreferenceValueId,
  });

  @override
  List<Object?> get props => [
        sportPreferenceId,
        sportPreferenceName,
        sportPreferenceValues,
        selectedPreferenceValueId
      ];
}
