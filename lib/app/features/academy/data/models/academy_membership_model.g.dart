// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'academy_membership_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AcademyMembershipModel _$AcademyMembershipModelFromJson(
        Map<String, dynamic> json) =>
    AcademyMembershipModel(
      academyId: json['academyId'] as int,
      academyName: json['academyName'] as String,
      courseId: json['courseId'] as int,
      courseName: json['courseName'] as String,
      courseStartDate: json['courseStartDate'] as String,
      courseEndDate: json['courseEndDate'] as String,
      kinShip: json['kinShip'] as String,
      subscriberPoints: json['subscriberPoints'] as int,
      coverPhoto: json['coverPhoto'] as String,
      coverVideo: json['coverVideo'] as String,
      photos:
          (json['photos'] as List<dynamic>).map((e) => e as String).toList(),
      videos:
          (json['videos'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$AcademyMembershipModelToJson(
        AcademyMembershipModel instance) =>
    <String, dynamic>{
      'academyId': instance.academyId,
      'academyName': instance.academyName,
      'courseId': instance.courseId,
      'courseName': instance.courseName,
      'courseStartDate': instance.courseStartDate,
      'courseEndDate': instance.courseEndDate,
      'kinShip': instance.kinShip,
      'subscriberPoints': instance.subscriberPoints,
      'coverPhoto': instance.coverPhoto,
      'coverVideo': instance.coverVideo,
      'photos': instance.photos,
      'videos': instance.videos,
    };
