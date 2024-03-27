import 'package:json_annotation/json_annotation.dart';

import '../../domain/enitites/user_profile_entity.dart';
import 'auth_model.dart';
import 'favorite_sport_model.dart';
import 'user_model.dart';

part 'user_profile_model.g.dart';

@JsonSerializable()
class UserProfileModel extends UserProfileEntity {
  const UserProfileModel({
    UserModel? user,
    List<FavoriteSportModel>? favoriteSports,
    AuthResultModel? authResult,
    int? followers,
    int? following,
  }) : super(
          user: user,
          favoriteSports: favoriteSports,
          authResult: authResult,
          followers: followers,
          following: following,
        );

  factory UserProfileModel.fromJson(Map<String, dynamic> json) =>
      _$UserProfileModelFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$UserProfileModelToJson(this);
}
