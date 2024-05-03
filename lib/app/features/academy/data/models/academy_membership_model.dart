import 'package:json_annotation/json_annotation.dart';

import '../../domain/enitites/academy_membership_entity.dart';

part 'academy_membership_model.g.dart';

@JsonSerializable()
class AcademyMembershipModel extends AcademyMembershipEntity {
  AcademyMembershipModel(
      {required super.academyId,
      required super.academyName,
      required super.courseId,
      required super.courseName,
      required super.courseStartDate,
      required super.courseEndDate,
      required super.kinShip,
      required super.subscriberPoints,
      required super.coverPhoto,
      required super.coverVideo,
      required super.photos,
      required super.videos});

  factory AcademyMembershipModel.fromJson(Map<String, dynamic> json) =>
      _$AcademyMembershipModelFromJson(json);
}
