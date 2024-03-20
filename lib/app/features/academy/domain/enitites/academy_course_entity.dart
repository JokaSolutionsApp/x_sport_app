import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

// part 'course.g.dart';

@JsonSerializable()
class AcademyCourseEntity extends Equatable {
  @JsonKey(name: 'courseId')
  final int courseId;
  @JsonKey(name: 'courseName')
  final String courseName;
  @JsonKey(name: 'sportId')
  final int sportId;
  @JsonKey(name: 'sportName')
  final String sportName;
  @JsonKey(name: 'description')
  final String description;
  @JsonKey(name: 'startTime')
  final String startTime;
  @JsonKey(name: 'endTime')
  final String endTime;

  AcademyCourseEntity({
    required this.courseId,
    required this.courseName,
    required this.sportId,
    required this.sportName,
    required this.description,
    required this.startTime,
    required this.endTime,
  });

  // factory AcademyCourseEntity.fromJson(Map<String, dynamic> json) => _$AcademyCourseEntityFromJson(json);
  // Map<String, dynamic> toJson() => _$AcademyCourseEntityToJson(this);

  @override
  List<Object?> get props => [
        courseId,
        courseName,
        sportId,
        sportName,
        description,
        startTime,
        endTime,
      ];
}
