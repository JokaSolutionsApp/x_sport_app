// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'academy_course_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AcademyCourseModel _$AcademyCourseModelFromJson(Map<String, dynamic> json) =>
    AcademyCourseModel(
      courseId: json['courseId'] as int,
      courseName: json['courseName'] as String,
      sportId: json['sportId'] as int,
      sportName: json['sportName'] as String,
      description: json['description'] as String,
      startTime: json['startTime'] as String,
      endTime: json['endTime'] as String,
    );

Map<String, dynamic> _$AcademyCourseModelToJson(AcademyCourseModel instance) =>
    <String, dynamic>{
      'courseId': instance.courseId,
      'courseName': instance.courseName,
      'sportId': instance.sportId,
      'sportName': instance.sportName,
      'description': instance.description,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
    };
