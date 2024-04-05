// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_courses_to_subscribe_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCoursesToSubscribeModel _$GetCoursesToSubscribeModelFromJson(
        Map<String, dynamic> json) =>
    GetCoursesToSubscribeModel(
      courseId: json['courseId'] as int,
      courseName: json['courseName'] as String,
      sportId: json['sportId'] as int,
      sportName: json['sportName'] as String,
      description: json['description'] as String,
      startDate: json['startDate'] as String,
      endDate: json['endDate'] as String,
      gender: json['gender'] as String,
      price: (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$GetCoursesToSubscribeModelToJson(
        GetCoursesToSubscribeModel instance) =>
    <String, dynamic>{
      'courseId': instance.courseId,
      'courseName': instance.courseName,
      'sportId': instance.sportId,
      'sportName': instance.sportName,
      'description': instance.description,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'gender': instance.gender,
      'price': instance.price,
    };
