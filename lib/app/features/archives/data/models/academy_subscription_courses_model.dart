import 'package:json_annotation/json_annotation.dart';
import 'package:x_sport/app/features/archives/domain/enitites/academy_subscription_course.dart';
part 'academy_subscription_courses_model.g.dart';

@JsonSerializable()
class AcademySubscriptionCourseModel extends AcademySubscriptionCourse {
  AcademySubscriptionCourseModel({
    required int courseId,
    required String courseName,
    required String courseStartDate,
    required String courseEndDate,
    required String kinShip,
    required int subscriberPoints,
  }) : super(
          courseId: courseId,
          courseName: courseName,
          courseStartDate: courseStartDate,
          courseEndDate: courseEndDate,
          kinShip: kinShip,
          subscriberPoints: subscriberPoints,
        );

  factory AcademySubscriptionCourseModel.fromJson(Map<String, dynamic> json) =>
      _$AcademySubscriptionCourseModelFromJson(json);
  Map<String, dynamic> toJson() => _$AcademySubscriptionCourseModelToJson(this);
}
