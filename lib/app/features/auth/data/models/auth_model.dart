import 'package:json_annotation/json_annotation.dart';
import 'package:x_sport/app/features/auth/domain/enitites/auth_entity.dart';

part 'auth_model.g.dart'; // Generate this file with json_serializable

@JsonSerializable()
class AuthResultModel extends AuthResultEntity {
  // Assuming randomCodes can be a list of dynamic values

  AuthResultModel({
    required String token,
    required String refreshToken,
    required bool success,
    required dynamic errors, // Assuming errors can have a dynamic structure
    required bool is2StepVerificationRequired,
    required String provider,
    required List<dynamic> randomCodes,
  }) : super(
          is2StepVerificationRequired: is2StepVerificationRequired,
          token: token,
          refreshToken: refreshToken,
          success: success,
          errors: errors,
          provider: provider,
          randomCodes: randomCodes,
        );

  // Factory method to create an instance from a JSON map
  factory AuthResultModel.fromJson(Map<String, dynamic> json) =>
      _$AuthResultModelFromJson(json);

  // Method to convert the instance into a JSON map
  Map<String, dynamic> toJson() => _$AuthResultModelToJson(this);
}
