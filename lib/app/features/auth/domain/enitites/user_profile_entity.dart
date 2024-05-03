import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'favorite_sport_entity.dart';
import 'josn_keys/auth_keys.dart';
import 'user_entity.dart';

@JsonSerializable()
class UserProfileEntity extends Equatable {
  @JsonKey(name: AuthKeys.user)
  final UserEntity? user;
  @JsonKey(name: AuthKeys.favoriteSports)
  final List<FavoriteSportEntity>? favoriteSports;

  @JsonKey(name: AuthKeys.followers)
  final int? followers;
  @JsonKey(name: AuthKeys.following)
  final int? following;
  // @JsonKey(name: AuthKeys.authResult)
  // final AuthResultEntity? authResult;
  const UserProfileEntity({
    this.user,
    this.favoriteSports,
    // this.authResult,
    this.followers,
    this.following,
  });

  @override
  List<Object?> get props => [
        user,
        favoriteSports,
        // authResult,
        followers,
        following,
      ];
}
