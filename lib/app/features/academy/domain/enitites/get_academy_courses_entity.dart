import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'age_category_with_cources.dart';
// import 'age_category_with_courses.dart';

// part 'academy.g.dart';

@JsonSerializable()
class GetAcademyCoursesEntity extends Equatable {
  @JsonKey(name: 'academyId')
  final int academyId;
  @JsonKey(name: 'academyName')
  final String academyName;
  @JsonKey(name: 'coverPhoto')
  final String coverPhoto;
  @JsonKey(name: 'coverVideo')
  final String coverVideo;
  @JsonKey(name: 'photos')
  final List<String> photos;
  @JsonKey(name: 'videos')
  final List<String> videos;
  @JsonKey(name: 'date')
  final String date;
  @JsonKey(name: 'ageCategoriesWithCoursesInDate')
  final List<AgeCategoryWithCoursesEntity> ageCategoriesWithCoursesInDate;

  GetAcademyCoursesEntity({
    required this.academyId,
    required this.academyName,
    required this.coverPhoto,
    required this.coverVideo,
    required this.photos,
    required this.videos,
    required this.date,
    required this.ageCategoriesWithCoursesInDate,
  });

  // factory GetAcademyCoursesEntity.fromJson(Map<String, dynamic> json) => _$GetAcademyCoursesEntityFromJson(json);
  // Map<String, dynamic> toJson() => _$GetAcademyCoursesEntityToJson(this);

  @override
  List<Object?> get props => [
        academyId,
        academyName,
        coverPhoto,
        coverVideo,
        photos,
        videos,
        date,
        ageCategoriesWithCoursesInDate,
      ];
}
