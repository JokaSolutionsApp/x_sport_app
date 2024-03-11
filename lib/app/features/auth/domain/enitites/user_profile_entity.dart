import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:x_sport/app/features/auth/domain/enitites/current_sport_entity.dart';
import 'package:x_sport/app/features/auth/domain/enitites/favorite_sport_entity.dart';
import 'package:x_sport/app/features/auth/domain/enitites/josn_keys/auth_keys.dart';
import 'package:x_sport/app/features/auth/domain/enitites/user_entity.dart';

@JsonSerializable()
class UserProfileEntity extends Equatable {
  @JsonKey(name: AuthKeys.user)
  final UserEntity user;
  @JsonKey(name: AuthKeys.favoriteSports)
  final List<FavoriteSportEntity> favoriteSports;
  @JsonKey(name: AuthKeys.currentSport)
  final CurrentSportEntity currentSport;
  @JsonKey(name: AuthKeys.followers)
  final int followers;
  @JsonKey(name: AuthKeys.following)
  final int following;

  const UserProfileEntity({
    required this.user,
    required this.favoriteSports,
    required this.currentSport,
    required this.followers,
    required this.following,
  });

  @override
  List<Object?> get props => [
        user,
        favoriteSports,
        currentSport,
        followers,
        following,
      ];
}
