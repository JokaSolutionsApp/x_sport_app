import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:x_sport/app/features/match/domain/enitites/work_days_entity.dart';

import '../../../../../core/constance/json_keys.dart';
import 'floor_entity.dart';

@JsonSerializable()
class SportStadiumEntity extends Equatable {
  @JsonKey(name: SportStadiumKeys.stadiumId)
  final int stadiumId;
  @JsonKey(name: SportStadiumKeys.stadiumName)
  final String stadiumName;
  @JsonKey(name: SportStadiumKeys.floors)
  final List<FloorEntity> floors;
  @JsonKey(name: SportStadiumKeys.regionName)
  final String regionName;
  @JsonKey(name: SportStadiumKeys.latitude)
  final double latitude;
  @JsonKey(name: SportStadiumKeys.longitude)
  final double longitude;
  @JsonKey(name: SportStadiumKeys.numberOfReviews)
  final double numberOfReviews;
  @JsonKey(name: SportStadiumKeys.evaluation)
  final double evaluation;
  @JsonKey(name: SportStadiumKeys.stadiumWorkDays)
  final List<WorkDaysEntity> stadiumWorkDays;
  @JsonKey(name: SportStadiumKeys.coverPhoto)
  final String coverPhoto;
  @JsonKey(name: SportStadiumKeys.coverVideo)
  final String coverVideo;
  @JsonKey(name: SportStadiumKeys.photos)
  final List<String> photos;
  @JsonKey(name: SportStadiumKeys.videos)
  final List<String> videos;

  const SportStadiumEntity({
    required this.stadiumWorkDays,
    required this.stadiumId,
    required this.regionName,
    required this.coverPhoto,
    required this.coverVideo,
    required this.photos,
    required this.videos,
    required this.stadiumName,
    required this.floors,
    required this.latitude,
    required this.longitude,
    required this.numberOfReviews,
    required this.evaluation,
  });

  @override
  List<Object?> get props => [
        stadiumWorkDays,
        stadiumId,
        regionName,
        coverPhoto,
        coverVideo,
        photos,
        videos,
        stadiumName,
        floors,
        latitude,
        longitude,
        numberOfReviews,
        evaluation,
      ];
}
