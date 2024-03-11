import 'package:json_annotation/json_annotation.dart';
import 'package:x_sport/app/features/auth/data/models/user_model.dart';
import 'package:x_sport/app/features/auth/domain/enitites/user_profile_entity.dart';
import 'favorite_sport_model.dart';
import 'current_sport_model.dart';

part 'user_profile_model.g.dart';

@JsonSerializable()
class UserProfileModel extends UserProfileEntity {
  const UserProfileModel({
    required UserModel user,
    required List<FavoriteSportModel> favoriteSports,
    required CurrentSportModel currentSport,
    required int followers,
    required int following,
  }) : super(
          user: user,
          favoriteSports: favoriteSports,
          currentSport: currentSport,
          followers: followers,
          following: following,
        );

  factory UserProfileModel.fromJson(Map<String, dynamic> json) =>
      _$UserProfileModelFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$UserProfileModelToJson(this);
}
