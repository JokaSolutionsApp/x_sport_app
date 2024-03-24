import 'package:json_annotation/json_annotation.dart';
import 'age_category_with_courses_model.dart';
import '../../domain/enitites/get_academy_courses_entity.dart';
part 'get_academy_courses_model.g.dart';

@JsonSerializable()
class GetAcademyCoursesModel extends GetAcademyCoursesEntity {
  GetAcademyCoursesModel({
    required int academyId,
    required String academyName,
    required String coverPhoto,
    required String coverVideo,
    required List<String> photos,
    required List<String> videos,
    required String date,
    required List<AgeCategoryWithCoursesModel> ageCategoriesWithCoursesInDate,
  }) : super(
            academyId: academyId,
            academyName: academyName,
            coverPhoto: coverPhoto,
            coverVideo: coverVideo,
            photos: photos,
            videos: videos,
            date: date,
            ageCategoriesWithCoursesInDate: ageCategoriesWithCoursesInDate);

  factory GetAcademyCoursesModel.fromJson(Map<String, dynamic> json) =>
      _$GetAcademyCoursesModelFromJson(json);
  Map<String, dynamic> toJson() => _$GetAcademyCoursesModelToJson(this);
}
