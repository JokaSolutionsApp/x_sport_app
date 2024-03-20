// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_academy_courses_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAcademyCoursesModel _$GetAcademyCoursesModelFromJson(
        Map<String, dynamic> json) =>
    GetAcademyCoursesModel(
      academyId: json['academyId'] as int,
      academyName: json['academyName'] as String,
      coverPhoto: json['coverPhoto'] as String,
      coverVideo: json['coverVideo'] as String,
      photos:
          (json['photos'] as List<dynamic>).map((e) => e as String).toList(),
      videos:
          (json['videos'] as List<dynamic>).map((e) => e as String).toList(),
      date: json['date'] as String,
      ageCategoriesWithCoursesInDate: (json['ageCategoriesWithCoursesInDate']
              as List<dynamic>)
          .map((e) =>
              AgeCategoryWithCoursesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetAcademyCoursesModelToJson(
        GetAcademyCoursesModel instance) =>
    <String, dynamic>{
      'academyId': instance.academyId,
      'academyName': instance.academyName,
      'coverPhoto': instance.coverPhoto,
      'coverVideo': instance.coverVideo,
      'photos': instance.photos,
      'videos': instance.videos,
      'date': instance.date,
      'ageCategoriesWithCoursesInDate': instance.ageCategoriesWithCoursesInDate,
    };
