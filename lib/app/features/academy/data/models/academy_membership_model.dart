import 'package:json_annotation/json_annotation.dart';
import 'package:x_sport/app/features/academy/data/models/academy_info_model.dart';
import 'package:x_sport/app/features/academy/data/models/sport_info_model.dart';
import 'package:x_sport/app/features/academy/domain/enitites/academy_membership_entity.dart';

part 'academy_membership_model.g.dart';

@JsonSerializable()
class AcademyMembershipModel extends AcademyMembershipEntity {
  AcademyMembershipModel({
    required SportInfoModel sportInfo,
    required List<AcademyInfoModel> academyInfoes,
  }) : super(academyInfoes: academyInfoes, sportInfo: sportInfo);

  factory AcademyMembershipModel.fromJson(Map<String, dynamic> json) =>
      _$AcademyMembershipModelFromJson(json);
}
