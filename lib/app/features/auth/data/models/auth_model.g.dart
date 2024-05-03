// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthResultModel _$AuthResultModelFromJson(Map<String, dynamic> json) =>
    AuthResultModel(
      token: json['token'] as String,
      refreshToken: json['refreshToken'] as String,
      success: json['success'] as bool,
      is2StepVerificationRequired: json['is2StepVerificationRequired'] as bool,
      provider: json['provider'] as String,
      randomCodes: json['randomCodes'] as List<dynamic>,
    );

Map<String, dynamic> _$AuthResultModelToJson(AuthResultModel instance) =>
    <String, dynamic>{
      'token': instance.token,
      'refreshToken': instance.refreshToken,
      'success': instance.success,
      'is2StepVerificationRequired': instance.is2StepVerificationRequired,
      'provider': instance.provider,
      'randomCodes': instance.randomCodes,
    };
