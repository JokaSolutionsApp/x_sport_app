// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sport_stadium_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SportStadiumModel _$SportStadiumModelFromJson(Map<String, dynamic> json) =>
    SportStadiumModel(
      stadiumId: json['stadiumId'] as int,
      regionName: json['regionName'] as String,
      coverPhoto: json['coverPhoto'] as String,
      coverVideo: json['coverVideo'] as String,
      photos:
          (json['photos'] as List<dynamic>).map((e) => e as String).toList(),
      videos:
          (json['videos'] as List<dynamic>).map((e) => e as String).toList(),
      stadiumName: json['stadiumName'] as String,
      floors: (json['floors'] as List<dynamic>)
          .map((e) =>
              const FloorJsonConverter().fromJson(e as Map<String, dynamic>))
          .toList(),
      latitude: (json['lat'] as num).toDouble(),
      longitude: (json['long'] as num).toDouble(),
      numberOfReviews: (json['numOfReviews'] as num).toDouble(),
      evaluation: (json['evaluation'] as num).toDouble(),
    );

Map<String, dynamic> _$SportStadiumModelToJson(SportStadiumModel instance) =>
    <String, dynamic>{
      'stadiumId': instance.stadiumId,
      'stadiumName': instance.stadiumName,
      'floors': instance.floors.map(const FloorJsonConverter().toJson).toList(),
      'regionName': instance.regionName,
      'lat': instance.latitude,
      'long': instance.longitude,
      'numOfReviews': instance.numberOfReviews,
      'evaluation': instance.evaluation,
      'coverPhoto': instance.coverPhoto,
      'coverVideo': instance.coverVideo,
      'photos': instance.photos,
      'videos': instance.videos,
    };
