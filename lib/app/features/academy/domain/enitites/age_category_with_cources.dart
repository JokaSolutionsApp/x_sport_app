import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:x_sport/app/features/academy/domain/enitites/academy_course_entity.dart';
// import 'course.dart';

// part 'age_category_with_courses.g.dart';

@JsonSerializable()
class AgeCategoryWithCoursesEntity extends Equatable {
  @JsonKey(name: 'ageCategoryId')
  final int ageCategoryId;
  @JsonKey(name: 'ageCategoryName')
  final String ageCategoryName;
  @JsonKey(name: 'fromAge')
  final int fromAge;
  @JsonKey(name: 'toAge')
  final int toAge;
  @JsonKey(name: 'courses')
  final List<AcademyCourseEntity> courses;

  AgeCategoryWithCoursesEntity({
    required this.ageCategoryId,
    required this.ageCategoryName,
    required this.fromAge,
    required this.toAge,
    required this.courses,
  });

  // factory AgeCategoryWithCoursesEntity.fromJson(Map<String, dynamic> json) =>
  //     _$AgeCategoryWithCoursesEntityFromJson(json);
  // Map<String, dynamic> toJson() => _$AgeCategoryWithCoursesEntityToJson(this);

  @override
  List<Object?> get props => [
        ageCategoryId,
        ageCategoryName,
        fromAge,
        toAge,
        courses,
      ];
}
