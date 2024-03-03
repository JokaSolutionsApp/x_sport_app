// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'welcome_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WelcomeModel _$WelcomeModelFromJson(Map<String, dynamic> json) => WelcomeModel(
      sports: (json['sports'] as List<dynamic>)
          .map((e) =>
              const SportJsonConverter().fromJson(e as Map<String, dynamic>))
          .toList(),
      token: json['authResult/token'] as String,
    );

Map<String, dynamic> _$WelcomeModelToJson(WelcomeModel instance) =>
    <String, dynamic>{
      'sports': instance.sports.map(const SportJsonConverter().toJson).toList(),
      'authResult/token': instance.token,
    };
