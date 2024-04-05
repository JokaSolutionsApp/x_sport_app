import 'package:json_annotation/json_annotation.dart';
import 'age_category_with_courses_model.dart';
import '../../domain/enitites/get_courses_to_subscribe_entity.dart';
part 'get_courses_to_subscribe_model.g.dart';

@JsonSerializable()
class GetCoursesToSubscribeModel extends GetCoursesToSubscribeEntity {
  GetCoursesToSubscribeModel(
      {required super.courseId,
      required super.courseName,
      required super.sportId,
      required super.sportName,
      required super.description,
      required super.startDate,
      required super.endDate,
      required super.gender,
      required super.price});

  factory GetCoursesToSubscribeModel.fromJson(Map<String, dynamic> json) =>
      _$GetCoursesToSubscribeModelFromJson(json);
  Map<String, dynamic> toJson() => _$GetCoursesToSubscribeModelToJson(this);
}
