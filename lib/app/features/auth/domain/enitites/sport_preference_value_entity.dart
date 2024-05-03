import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'josn_keys/auth_keys.dart';

@JsonSerializable()
class SportPreferenceValueEntity extends Equatable {
  @JsonKey(name: AuthKeys.sportPreferenceValueId)
  final int sportPreferenceValueId;
  @JsonKey(name: AuthKeys.sportPreferenceValueName)
  final String sportPreferenceValueName;

  const SportPreferenceValueEntity({
    required this.sportPreferenceValueId,
    required this.sportPreferenceValueName,
  });

  @override
  List<Object?> get props => [sportPreferenceValueId, sportPreferenceValueName];
}
