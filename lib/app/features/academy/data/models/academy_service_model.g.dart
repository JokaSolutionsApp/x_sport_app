// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'academy_service_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AcademyServiceModel _$AcademyServiceModelFromJson(Map<String, dynamic> json) =>
    AcademyServiceModel(
      serviceId: json['serviceId'] as int,
      serviceName: json['serviceName'] as String,
      imgUrl: json['imgUrl'] as String,
    );

Map<String, dynamic> _$AcademyServiceModelToJson(
        AcademyServiceModel instance) =>
    <String, dynamic>{
      'serviceId': instance.serviceId,
      'serviceName': instance.serviceName,
      'imgUrl': instance.imgUrl,
    };
