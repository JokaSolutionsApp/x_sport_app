import 'package:json_annotation/json_annotation.dart';
import 'package:x_sport/app/features/academy/data/models/academy_course_model.dart';
import 'package:x_sport/app/features/academy/domain/enitites/age_category_with_cources.dart';
// import 'course.dart';

part 'age_category_with_courses_model.g.dart';

@JsonSerializable()
class AgeCategoryWithCoursesModel extends AgeCategoryWithCoursesEntity {
  AgeCategoryWithCoursesModel({
    required int ageCategoryId,
    required String ageCategoryName,
    required int fromAge,
    required int toAge,
    required List<AcademyCourseModel> courses,
  }) : super(
          ageCategoryId: ageCategoryId,
          ageCategoryName: ageCategoryName,
          fromAge: fromAge,
          toAge: toAge,
          courses: courses,
        );

  factory AgeCategoryWithCoursesModel.fromJson(Map<String, dynamic> json) =>
      _$AgeCategoryWithCoursesModelFromJson(json);
  Map<String, dynamic> toJson() => _$AgeCategoryWithCoursesModelToJson(this);
}
