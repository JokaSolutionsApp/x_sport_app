// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'about_stadium_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AboutStadiumModel _$AboutStadiumModelFromJson(Map<String, dynamic> json) =>
    AboutStadiumModel(
      stadiumId: json['stadiumId'] as int,
      stadiumType: json['stadiumType'] as String,
      regionName: json['regionName'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      openAt: json['openAt'] as String?,
      closeAt: json['closeAt'] as String?,
      services: (json['services'] as List<dynamic>)
          .map((e) => CourtServiceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      coverPhoto: json['coverPhoto'] as String,
      coverVideo: json['coverVideo'] as String,
      photos:
          (json['photos'] as List<dynamic>).map((e) => e as String).toList(),
      videos:
          (json['videos'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$AboutStadiumModelToJson(AboutStadiumModel instance) =>
    <String, dynamic>{
      'stadiumId': instance.stadiumId,
      'name': instance.name,
      'description': instance.description,
      'stadiumType': instance.stadiumType,
      'regionName': instance.regionName,
      'price': instance.price,
      'openAt': instance.openAt,
      'closeAt': instance.closeAt,
      'services': instance.services,
      'coverPhoto': instance.coverPhoto,
      'coverVideo': instance.coverVideo,
      'photos': instance.photos,
      'videos': instance.videos,
    };
