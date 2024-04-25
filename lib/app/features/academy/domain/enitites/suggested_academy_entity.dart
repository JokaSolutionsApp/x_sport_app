import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'age_category_dropdown_item.dart';

@JsonSerializable()
class SuggestedAcademyEntity extends Equatable {
  @JsonKey(name: 'academyId')
  final int academyId;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'description')
  final String description;
  @JsonKey(name: 'regionName')
  final String regionName;
  @JsonKey(name: 'lat')
  final double lat;
  @JsonKey(name: 'long')
  final double long;
  @JsonKey(name: 'minPrice')
  final double minPrice;
  @JsonKey(name: 'openTime')
  final String openTime;
  @JsonKey(name: 'closeTime')
  final String closeTime;
  @JsonKey(name: 'evaluation')
  final double evaluation;
  @JsonKey(name: 'numReviews')
  final int numReviews;
  @JsonKey(name: 'coverPhoto')
  final String coverPhoto;
  @JsonKey(name: 'coverVideo')
  final String coverVideo;
  @JsonKey(name: 'photos')
  final List<String> photos;
  @JsonKey(name: 'videos')
  final List<String> videos;
  @JsonKey(name: 'ageCategoriesDropdownItems')
  final List<AgeCategoryDropdownItem> ageCategoriesDropdownItems;

  const SuggestedAcademyEntity({
    required this.academyId,
    required this.name,
    required this.description,
    required this.regionName,
    required this.lat,
    required this.long,
    required this.minPrice,
    required this.openTime,
    required this.closeTime,
    required this.evaluation,
    required this.numReviews,
    required this.coverPhoto,
    required this.coverVideo,
    required this.photos,
    required this.videos,
    required this.ageCategoriesDropdownItems,
  });

  @override
  List<Object?> get props => [
        academyId,
        name,
        description,
        regionName,
        lat,
        long,
        minPrice,
        openTime,
        closeTime,
        evaluation,
        numReviews,
        coverPhoto,
        coverVideo,
        photos,
        videos,
        ageCategoriesDropdownItems,
      ];
}
