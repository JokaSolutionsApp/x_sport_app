import 'package:json_annotation/json_annotation.dart';
import 'package:x_sport/app/features/academy/data/models/age_category_with_courses_model.dart';
import '../../domain/enitites/suggested_academy_entity.dart';

part 'suggested_academy_model.g.dart';

@JsonSerializable()
class SuggestedAcademyModel extends SuggestedAcademyEntity {
  SuggestedAcademyModel({
    required int academyId,
    required String name,
    required String description,
    required String regionName,
    required double lat,
    required double long,
    required double minPrice,
    required String openTime,
    required String closeTime,
    required double evaluation,
    required int numReviews,
    required String coverPhoto,
    required String coverVideo,
    required List<String> photos,
    required List<String> videos,
    required List<AgeCategoryDropDownItemModel> ageCategoriesDropdownItems,
  }) : super(
          academyId: academyId,
          name: name,
          description: description,
          regionName: regionName,
          lat: lat,
          long: long,
          minPrice: minPrice,
          openTime: openTime,
          closeTime: closeTime,
          evaluation: evaluation,
          numReviews: numReviews,
          coverPhoto: coverPhoto,
          coverVideo: coverVideo,
          photos: photos,
          videos: videos,
          ageCategoriesDropdownItems: ageCategoriesDropdownItems,
        );

  factory SuggestedAcademyModel.fromJson(Map<String, dynamic> json) =>
      _$SuggestedAcademyModelFromJson(json);
  Map<String, dynamic> toJson() => _$SuggestedAcademyModelToJson(this);
}
