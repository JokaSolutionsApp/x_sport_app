// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'academy_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AcademyInfoModel _$AcademyInfoModelFromJson(Map<String, dynamic> json) =>
    AcademyInfoModel(
      academyId: json['academyId'] as int,
      name: json['name'] as String,
      points: json['points'] as int,
    );

Map<String, dynamic> _$AcademyInfoModelToJson(AcademyInfoModel instance) =>
    <String, dynamic>{
      'academyId': instance.academyId,
      'name': instance.name,
      'points': instance.points,
    };
