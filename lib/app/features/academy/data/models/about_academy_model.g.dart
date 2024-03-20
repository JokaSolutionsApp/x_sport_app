// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'about_academy_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AboutAcademyModel _$AboutAcademyModelFromJson(Map<String, dynamic> json) =>
    AboutAcademyModel(
      academyId: json['academyId'] as int,
      name: json['name'] as String,
      description: json['description'] as String,
      lat: (json['lat'] as num).toDouble(),
      long: (json['long'] as num).toDouble(),
      minPrice: json['minPrice'] as int,
      maxPrice: json['maxPrice'] as int,
      phone: json['phone'] as String,
      openAt: json['openAt'] as String,
      closeAt: json['closeAt'] as String,
      services: (json['services'] as List<dynamic>)
          .map((e) => AcademyServiceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AboutAcademyModeltoJson(AboutAcademyModel instance) =>
    <String, dynamic>{
      'academyId': instance.academyId,
      'name': instance.name,
      'description': instance.description,
      'lat': instance.lat,
      'long': instance.long,
      'minPrice': instance.minPrice,
      'maxPrice': instance.maxPrice,
      'phone': instance.phone,
      'openAt': instance.openAt,
      'closeAt': instance.closeAt,
      'services': instance.services,
    };
