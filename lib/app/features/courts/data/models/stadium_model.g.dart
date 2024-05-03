// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stadium_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StadiumModel _$StadiumModelFromJson(Map<String, dynamic> json) => StadiumModel(
      stadiumId: json['stadiumId'] as int,
      stadiumName: json['stadiumName'] as String,
      stadiumType: json['stadiumType'] as String,
      regionName: json['regionName'] as String,
      lat: (json['lat'] as num).toDouble(),
      long: (json['long'] as num).toDouble(),
      evaluation: (json['evaluation'] as num).toDouble(),
      numOfReviews: json['numOfReviews'] as int,
      coverPhoto: json['coverPhoto'] as String,
      coverVideo: json['coverVideo'] as String,
      photos:
          (json['photos'] as List<dynamic>).map((e) => e as String).toList(),
      videos:
          (json['videos'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$StadiumModelToJson(StadiumModel instance) =>
    <String, dynamic>{
      'stadiumId': instance.stadiumId,
      'stadiumName': instance.stadiumName,
      'stadiumType': instance.stadiumType,
      'regionName': instance.regionName,
      'lat': instance.lat,
      'long': instance.long,
      'numOfReviews': instance.numOfReviews,
      'evaluation': instance.evaluation,
      'coverPhoto': instance.coverPhoto,
      'coverVideo': instance.coverVideo,
      'photos': instance.photos,
      'videos': instance.videos,
    };
