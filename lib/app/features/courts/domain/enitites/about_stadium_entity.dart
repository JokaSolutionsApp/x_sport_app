import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'stadium_service_entity.dart';

@JsonSerializable()
class AboutStadiumEntity extends Equatable {
  @JsonKey(name: 'stadiumId')
  final int stadiumId;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'description')
  final String description;
  @JsonKey(name: 'stadiumType')
  final String stadiumType;
  @JsonKey(name: 'regionName')
  final String regionName;
  @JsonKey(name: 'price')
  final double price;
  @JsonKey(name: 'openAt')
  final String? openAt;
  @JsonKey(name: 'closeAt')
  final String? closeAt;
  @JsonKey(name: 'services')
  final List<StadiumServiceEntity> services;
  @JsonKey(name: 'coverPhoto')
  final String coverPhoto;
  @JsonKey(name: 'coverVideo')
  final String coverVideo;
  @JsonKey(name: 'photos')
  final List<String> photos;
  @JsonKey(name: 'videos')
  final List<String> videos;

  const AboutStadiumEntity({
    required this.stadiumId,
    required this.name,
    required this.description,
    required this.stadiumType,
    required this.regionName,
    required this.price,
    this.openAt,
    this.closeAt,
    required this.services,
    required this.coverPhoto,
    required this.coverVideo,
    required this.photos,
    required this.videos,
  });

  @override
  List<Object?> get props => [
        stadiumId,
        name,
        description,
        stadiumType,
        regionName,
        price,
        openAt,
        closeAt,
        services,
        coverPhoto,
        coverVideo,
        photos,
        videos,
      ];
}
