import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:x_sport/app/features/auth/domain/enitites/josn_keys/auth_keys.dart';
import 'package:x_sport/app/features/auth/domain/enitites/sport_preference_entity.dart';

@JsonSerializable()
class FavoriteSportEntity extends Equatable {
  @JsonKey(name: AuthKeys.sportId)
  final int id;
  @JsonKey(name: AuthKeys.sportName)
  final String name;
  @JsonKey(name: AuthKeys.isCurrentState)
  final bool isCurrentState;
  @JsonKey(name: AuthKeys.preferences)
  final List<SportPreferenceEntity> preferences;

  const FavoriteSportEntity({
    required this.id,
    required this.name,
    required this.isCurrentState,
    required this.preferences,
  });

  @override
  List<Object?> get props => [id, name, isCurrentState, preferences];
}
