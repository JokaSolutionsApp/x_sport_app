// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'academy_subscription_courses_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AcademySubscriptionCourseModel _$AcademySubscriptionCourseModelFromJson(
        Map<String, dynamic> json) =>
    AcademySubscriptionCourseModel(
      courseId: json['courseId'] as int,
      courseName: json['courseName'] as String,
      courseStartDate: json['courseStartDate'] as String,
      courseEndDate: json['courseEndDate'] as String,
      kinShip: json['kinShip'] as String,
      subscriberPoints: json['subscriberPoints'] as int,
    );

Map<String, dynamic> _$AcademySubscriptionCourseModelToJson(
        AcademySubscriptionCourseModel instance) =>
    <String, dynamic>{
      'courseId': instance.courseId,
      'courseName': instance.courseName,
      'courseStartDate': instance.courseStartDate,
      'courseEndDate': instance.courseEndDate,
      'kinShip': instance.kinShip,
      'subscriberPoints': instance.subscriberPoints,
    };
