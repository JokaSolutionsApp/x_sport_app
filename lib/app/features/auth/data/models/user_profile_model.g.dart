// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserProfileModel _$UserProfileModelFromJson(Map<String, dynamic> json) =>
    UserProfileModel(
      user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
      favoriteSports: (json['favoriteSports'] as List<dynamic>)
          .map((e) => FavoriteSportModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      currentSport: CurrentSportModel.fromJson(
          json['currentSport'] as Map<String, dynamic>),
      followers: json['followers'] as int,
      following: json['following'] as int,
    );

Map<String, dynamic> _$UserProfileModelToJson(UserProfileModel instance) =>
    <String, dynamic>{
      'user': instance.user,
      'favoriteSports': instance.favoriteSports,
      'currentSport': instance.currentSport,
      'followers': instance.followers,
      'following': instance.following,
    };
