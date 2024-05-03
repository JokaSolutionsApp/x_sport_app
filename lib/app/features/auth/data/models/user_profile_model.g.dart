// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserProfileModel _$UserProfileModelFromJson(Map<String, dynamic> json) =>
    UserProfileModel(
      user: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
      favoriteSports: (json['favoriteSports'] as List<dynamic>?)
          ?.map((e) => FavoriteSportModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      authResult: json['authResult'] == null
          ? null
          : AuthResultModel.fromJson(
              json['authResult'] as Map<String, dynamic>),
      followers: json['followers'] as int?,
      following: json['following'] as int?,
    );

Map<String, dynamic> _$UserProfileModelToJson(UserProfileModel instance) =>
    <String, dynamic>{
      'user': instance.user,
      'favoriteSports': instance.favoriteSports,
      'followers': instance.followers,
      'following': instance.following,
      'authResult': instance.authResult,
    };
