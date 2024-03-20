import 'package:json_annotation/json_annotation.dart';
import 'package:x_sport/app/features/academy/domain/enitites/academy_course_entity.dart';

part 'academy_course_model.g.dart';

@JsonSerializable()
class AcademyCourseModel extends AcademyCourseEntity {
  AcademyCourseModel({
    required super.courseId,
    required super.courseName,
    required super.sportId,
    required super.sportName,
    required super.description,
    required super.startTime,
    required super.endTime,
  });

  factory AcademyCourseModel.fromJson(Map<String, dynamic> json) =>
      _$AcademyCourseModelFromJson(json);
  Map<String, dynamic> toJson() => _$AcademyCourseModelToJson(this);
}
