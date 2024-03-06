import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:x_sport/app/features/auth/domain/enitites/current_sport_entity.dart';
import 'package:x_sport/app/features/auth/domain/enitites/favorite_sport_entity.dart';
import 'package:x_sport/app/features/auth/domain/enitites/josn_keys/auth_keys.dart';

@JsonSerializable()
class UserEntity extends Equatable {
  @JsonKey(name: AuthKeys.userId)
  final int userId;
  @JsonKey(name: AuthKeys.loyaltyPoints)
  final int loyaltyPoints;
  @JsonKey(name: AuthKeys.name)
  final String name;
  @JsonKey(name: AuthKeys.email)
  final String email;
  @JsonKey(name: AuthKeys.phone)
  final String phone;
  @JsonKey(name: AuthKeys.gender)
  final String gender;
  @JsonKey(name: AuthKeys.longitude)
  final double longitude;
  @JsonKey(name: AuthKeys.latitude)
  final double latitude;
  @JsonKey(name: AuthKeys.imgURL)
  final String imgURL;
  @JsonKey(name: AuthKeys.favoriteSports)
  final List<FavoriteSportEntity> favoriteSports;
  @JsonKey(name: AuthKeys.currentSport)
  final CurrentSportEntity currentSport;
  @JsonKey(name: AuthKeys.followers)
  final int followers;
  @JsonKey(name: AuthKeys.following)
  final int following;

  const UserEntity({
    required this.userId,
    required this.loyaltyPoints,
    required this.name,
    required this.email,
    required this.phone,
    required this.gender,
    required this.longitude,
    required this.latitude,
    required this.imgURL,
    required this.favoriteSports,
    required this.currentSport,
    required this.followers,
    required this.following,
  });

  @override
  List<Object?> get props => [
        userId,
        loyaltyPoints,
        name,
        email,
        phone,
        gender,
        longitude,
        latitude,
        imgURL,
        favoriteSports,
        currentSport,
        followers,
        following,
      ];
}
