import 'package:json_annotation/json_annotation.dart';

import '../../domain/enitites/user_entity.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel extends UserEntity {
  const UserModel({
    required super.userId,
    required super.loyaltyPoints,
    required super.name,
    super.email,
    super.phone,
    super.newEmail,
    required super.gender,
    super.longitude,
    super.latitude,
    required super.imgURL,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
