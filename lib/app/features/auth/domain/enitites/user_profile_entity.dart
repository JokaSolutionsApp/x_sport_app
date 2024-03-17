import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'current_sport_entity.dart';
import 'favorite_sport_entity.dart';
import 'josn_keys/auth_keys.dart';
import 'user_entity.dart';

@JsonSerializable()
class UserProfileEntity extends Equatable {
  @JsonKey(name: AuthKeys.user)
  final UserEntity user;
  @JsonKey(name: AuthKeys.favoriteSports)
  final List<FavoriteSportEntity> favoriteSports;
  // @JsonKey(name: AuthKeys.currentSport)
  // final CurrentSportEntity currentSport;
  @JsonKey(name: AuthKeys.followers)
  final int followers;
  @JsonKey(name: AuthKeys.following)
  final int following;

  const UserProfileEntity({
    required this.user,
    required this.favoriteSports,
    // required this.currentSport,
    required this.followers,
    required this.following,
  });

  @override
  List<Object?> get props => [
        user,
        favoriteSports,
        // currentSport,
        followers,
        following,
      ];
}
