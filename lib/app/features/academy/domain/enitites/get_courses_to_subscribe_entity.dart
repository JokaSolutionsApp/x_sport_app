import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'age_category_with_cources.dart';
// import 'age_category_with_courses.dart';

// part 'academy.g.dart';

@JsonSerializable()
class GetCoursesToSubscribeEntity extends Equatable {
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
  @JsonKey(name: 'startDate')
  final String startDate;
  @JsonKey(name: 'endDate')
  final String endDate;
  @JsonKey(name: 'gender')
  final String gender;
  @JsonKey(name: 'price')
  final double price;

  const GetCoursesToSubscribeEntity({
    required this.courseId,
    required this.courseName,
    required this.sportId,
    required this.sportName,
    required this.description,
    required this.startDate,
    required this.endDate,
    required this.gender,
    required this.price,
  });

  // factory getCoursesToSubscribeEntity.fromJson(Map<String, dynamic> json) => _$getCoursesToSubscribeEntityFromJson(json);
  // Map<String, dynamic> toJson() => _$getCoursesToSubscribeEntityToJson(this);

  @override
  List<Object?> get props => [
        courseId,
        courseName,
        sportId,
        sportName,
        description,
        startDate,
        endDate,
        gender,
        price,
      ];
}
