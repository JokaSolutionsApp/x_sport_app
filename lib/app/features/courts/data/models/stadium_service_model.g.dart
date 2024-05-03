// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stadium_service_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CourtServiceModel _$CourtServiceModelFromJson(Map<String, dynamic> json) =>
    CourtServiceModel(
      serviceId: json['serviceId'] as int,
      serviceName: json['serviceName'] as String,
      imgUrl: json['imgUrl'] as String,
    );

Map<String, dynamic> _$CourtServiceModelToJson(CourtServiceModel instance) =>
    <String, dynamic>{
      'serviceId': instance.serviceId,
      'serviceName': instance.serviceName,
      'imgUrl': instance.imgUrl,
    };
