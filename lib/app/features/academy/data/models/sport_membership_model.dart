import 'package:json_annotation/json_annotation.dart';
import 'package:x_sport/app/features/academy/domain/enitites/sports_membership_entity.dart';

part 'sport_membership_model.g.dart';

@JsonSerializable()
class SportMembershipModel extends SportMembershipEntity {
  const SportMembershipModel({
    required super.sportId,
    required super.name,
  });

  factory SportMembershipModel.fromJson(Map<String, dynamic> json) =>
      _$SportMembershipModelFromJson(json);

  Map<String, dynamic> toJson() => _$SportMembershipModelToJson(this);
}
