// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      userId: json['userId'] as int,
      loyaltyPoints: json['loyaltyPoints'] as int,
      name: json['name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      gender: json['gender'] as String,
      longitude: (json['longitude'] as num).toDouble(),
      latitude: (json['latitude'] as num).toDouble(),
      imgURL: json['imgURL'] as String,
      favoriteSports: (json['favoriteSports'] as List<dynamic>)
          .map((e) => FavoriteSportModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      currentSport: CurrentSportModel.fromJson(
          json['currentSport'] as Map<String, dynamic>),
      followers: json['followers'] as int,
      following: json['following'] as int,
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'userId': instance.userId,
      'loyaltyPoints': instance.loyaltyPoints,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'gender': instance.gender,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'imgURL': instance.imgURL,
      'favoriteSports': instance.favoriteSports,
      'currentSport': instance.currentSport,
      'followers': instance.followers,
      'following': instance.following,
    };
