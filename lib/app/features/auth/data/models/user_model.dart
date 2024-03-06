import 'package:json_annotation/json_annotation.dart';
import 'package:x_sport/app/features/auth/domain/enitites/user_entity.dart';
import 'favorite_sport_model.dart';
import 'current_sport_model.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel extends UserEntity {
  const UserModel({
    required int userId,
    required int loyaltyPoints,
    required String name,
    required String email,
    required String phone,
    required String gender,
    required double longitude,
    required double latitude,
    required String imgURL,
    required List<FavoriteSportModel> favoriteSports,
    required CurrentSportModel currentSport,
    required int followers,
    required int following,
  }) : super(
          userId: userId,
          loyaltyPoints: loyaltyPoints,
          name: name,
          email: email,
          phone: phone,
          gender: gender,
          longitude: longitude,
          latitude: latitude,
          imgURL: imgURL,
          favoriteSports: favoriteSports,
          currentSport: currentSport,
          followers: followers,
          following: following,
        );

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
