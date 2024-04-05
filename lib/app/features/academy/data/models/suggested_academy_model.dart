import 'package:json_annotation/json_annotation.dart';
import '../../domain/enitites/suggested_academy_entity.dart';

part 'suggested_academy_model.g.dart';

@JsonSerializable()
class SuggestedAcademyModel extends SuggestedAcademyEntity {
  SuggestedAcademyModel({
    required super.academyId,
    required super.name,
    required super.description,
    required super.regionName,
    required super.lat,
    required super.long,
    required super.minPrice,
    required super.openTime,
    required super.closeTime,
    required super.evaluation,
    required super.numReviews,
    required super.coverPhoto,
    required super.coverVideo,
    required super.photos,
    required super.videos,
  });

  factory SuggestedAcademyModel.fromJson(Map<String, dynamic> json) =>
      _$SuggestedAcademyModelFromJson(json);
  Map<String, dynamic> toJson() => _$SuggestedAcademyModelToJson(this);
}
