import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

// part 'auth_result_entity.g.dart'; // Generate this file with json_serializable

@JsonSerializable()
class AuthResultEntity extends Equatable {
  final String token;
  final String refreshToken;
  final bool success;
  final bool is2StepVerificationRequired;
  final String provider;
  final List<dynamic>
      randomCodes; // Assuming randomCodes can be a list of dynamic values

  AuthResultEntity({
    required this.token,
    required this.refreshToken,
    required this.success,
    required this.is2StepVerificationRequired,
    required this.provider,
    required this.randomCodes,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        token,
        refreshToken,
        success,
        is2StepVerificationRequired,
        provider,
        randomCodes,
      ];
}
