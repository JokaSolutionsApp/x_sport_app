import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:x_sport/presentation/features/auth/domain/enitites/josn_keys/welcome_keys.dart';
import 'package:x_sport/presentation/features/auth/domain/enitites/sport_entity.dart';

class WelcomeEntity extends Equatable {
  final List<SportEntity> sports;
  @JsonKey(name: Welcomekeys.token)
  final String token;

  const WelcomeEntity({
    required this.sports,
    required this.token,
  });

  WelcomeEntity copyWith({
    List<SportEntity>? sports,
    String? token,
  }) =>
      WelcomeEntity(
        sports: sports ?? this.sports,
        token: token ?? this.token,
      );

  @override
  List<Object?> get props => [
        sports,
        token,
      ];
}
