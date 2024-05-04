import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class StadiumEntity extends Equatable {
  @JsonKey(name: 'stadiumId')
  final int stadiumId;
  @JsonKey(name: 'stadiumName')
  final String stadiumName;
  @JsonKey(name: 'stadiumType')
  final String? stadiumType;
  @JsonKey(name: 'regionName')
  final String regionName;
  @JsonKey(name: 'lat')
  final double lat;
  @JsonKey(name: 'long')
  final double long;
  @JsonKey(name: 'numOfReviews')
  final int numOfReviews;
  @JsonKey(name: 'evaluation')
  final double evaluation;
  @JsonKey(name: 'coverPhoto')
  final String coverPhoto;
  @JsonKey(name: 'coverVideo')
  final String coverVideo;
  @JsonKey(name: 'photos')
  final List<String> photos;
  @JsonKey(name: 'videos')
  final List<String> videos;

  StadiumEntity({
    required this.stadiumId,
    required this.stadiumName,
    this.stadiumType,
    required this.regionName,
    required this.lat,
    required this.long,
    required this.evaluation,
    required this.numOfReviews,
    required this.coverPhoto,
    required this.coverVideo,
    required this.photos,
    required this.videos,
  });

  @override
  List<Object?> get props => [
        stadiumId,
        stadiumName,
        stadiumType,
        regionName,
        lat,
        long,
        evaluation,
        numOfReviews,
        coverPhoto,
        coverVideo,
        photos,
        videos,
      ];
}
