// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'age_category_with_courses_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AgeCategoryWithCoursesModel _$AgeCategoryWithCoursesModelFromJson(
        Map<String, dynamic> json) =>
    AgeCategoryWithCoursesModel(
      ageCategoryId: json['ageCategoryId'] as int,
      ageCategoryName: json['ageCategoryName'] as String,
      fromAge: json['fromAge'] as int,
      toAge: json['toAge'] as int,
      courses: (json['courses'] as List<dynamic>)
          .map((e) => AcademyCourseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AgeCategoryWithCoursesModelToJson(
        AgeCategoryWithCoursesModel instance) =>
    <String, dynamic>{
      'ageCategoryId': instance.ageCategoryId,
      'ageCategoryName': instance.ageCategoryName,
      'fromAge': instance.fromAge,
      'toAge': instance.toAge,
      'courses': instance.courses,
    };
