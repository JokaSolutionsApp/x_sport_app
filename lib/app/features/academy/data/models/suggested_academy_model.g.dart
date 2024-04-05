// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'suggested_academy_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SuggestedAcademyModel _$SuggestedAcademyModelFromJson(
        Map<String, dynamic> json) =>
    SuggestedAcademyModel(
      academyId: json['academyId'] as int,
      name: json['name'] as String,
      description: json['description'] as String,
      regionName: json['regionName'] as String,
      lat: (json['lat'] as num).toDouble(),
      long: (json['long'] as num).toDouble(),
      minPrice: (json['minPrice'] as num).toDouble(),
      openTime: json['openTime'] as String,
      closeTime: json['closeTime'] as String,
      evaluation: (json['evaluation'] as num).toDouble(),
      numReviews: json['numReviews'] as int,
      coverPhoto: json['coverPhoto'] as String,
      coverVideo: json['coverVideo'] as String,
      photos:
          (json['photos'] as List<dynamic>).map((e) => e as String).toList(),
      videos:
          (json['videos'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$SuggestedAcademyModelToJson(
        SuggestedAcademyModel instance) =>
    <String, dynamic>{
      'academyId': instance.academyId,
      'name': instance.name,
      'description': instance.description,
      'regionName': instance.regionName,
      'lat': instance.lat,
      'long': instance.long,
      'minPrice': instance.minPrice,
      'openTime': instance.openTime,
      'closeTime': instance.closeTime,
      'evaluation': instance.evaluation,
      'numReviews': instance.numReviews,
      'coverPhoto': instance.coverPhoto,
      'coverVideo': instance.coverVideo,
      'photos': instance.photos,
      'videos': instance.videos,
    };
