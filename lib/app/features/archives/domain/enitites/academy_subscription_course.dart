import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class AcademySubscriptionCourse extends Equatable {
  @JsonKey(name: 'courseId')
  final int courseId;
  @JsonKey(name: 'courseName')
  final String courseName;
  @JsonKey(name: 'courseStartDate')
  final String courseStartDate;
  @JsonKey(name: 'courseEndDate')
  final String courseEndDate;
  @JsonKey(name: 'kinShip')
  final String kinShip;
  @JsonKey(name: 'subscriberPoints')
  final int subscriberPoints;

  const AcademySubscriptionCourse({
    required this.courseId,
    required this.courseName,
    required this.courseStartDate,
    required this.courseEndDate,
    required this.kinShip,
    required this.subscriberPoints,
  });

  // factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);
  // Map<String, dynamic> toJson() => _$CourseToJson(this);

  @override
  List<Object?> get props => [
        courseId,
        courseName,
        courseStartDate,
        courseEndDate,
        kinShip,
        subscriberPoints
      ];
}
