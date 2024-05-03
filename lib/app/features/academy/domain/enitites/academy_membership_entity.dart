import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class AcademyMembershipEntity extends Equatable {
  @JsonKey(name: 'academyId')
  final int academyId;
  @JsonKey(name: 'academyName')
  final String academyName;
  @JsonKey(name: 'courseId')
  final int courseId;
  @JsonKey(name: 'courseName')
  final String courseName;
  @JsonKey(name: 'courseStartDate')
  final String courseStartDate;
  @JsonKey(name: 'courseEndDate')
  final String courseEndDate;
  @JsonKey(name: 'kinShip')
  final String kinShip;
  @JsonKey(name: 'subscriberPoints')
  final int subscriberPoints;
  @JsonKey(name: 'coverPhoto')
  final String coverPhoto;
  @JsonKey(name: 'coverVideo')
  final String coverVideo;
  @JsonKey(name: 'photos')
  final List<String> photos;
  @JsonKey(name: 'videos')
  final List<String> videos;

  AcademyMembershipEntity({
    required this.academyId,
    required this.academyName,
    required this.courseId,
    required this.courseName,
    required this.courseStartDate,
    required this.courseEndDate,
    required this.kinShip,
    required this.subscriberPoints,
    required this.coverPhoto,
    required this.coverVideo,
    required this.photos,
    required this.videos,
  });

  @override
  List<Object?> get props => [
        academyId,
        academyName,
        courseId,
        courseName,
        courseStartDate,
        courseEndDate,
        kinShip,
        subscriberPoints,
        coverPhoto,
        coverVideo,
        photos,
        videos,
      ];
}
