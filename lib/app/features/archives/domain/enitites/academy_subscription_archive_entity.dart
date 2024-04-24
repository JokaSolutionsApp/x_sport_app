import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:x_sport/app/features/archives/domain/enitites/academy_subscription_course.dart';

// part 'academy_subscription_archive.g.dart'; // Assuming you have the JSON serialization code in this file.

@JsonSerializable()
class AcademySubscriptionArchive extends Equatable {
  @JsonKey(name: 'academyId')
  final int academyId;
  @JsonKey(name: 'academyName')
  final String academyName;
  @JsonKey(name: 'subscriptionStartDate')
  final String subscriptionStartDate;
  @JsonKey(name: 'subscriptionEndDate')
  final String subscriptionEndDate;
  @JsonKey(name: 'sports')
  final List<String> sports;
  @JsonKey(name: 'courses')
  final List<AcademySubscriptionCourse> courses;
  @JsonKey(name: 'coverPhoto')
  final String coverPhoto;
  @JsonKey(name: 'coverVideo')
  final String coverVideo;
  @JsonKey(name: 'photos')
  final List<String> photos;
  @JsonKey(name: 'videos')
  final List<String> videos;

  const AcademySubscriptionArchive({
    required this.academyId,
    required this.academyName,
    required this.subscriptionStartDate,
    required this.subscriptionEndDate,
    required this.sports,
    required this.courses,
    required this.coverPhoto,
    required this.coverVideo,
    required this.photos,
    required this.videos,
  });

  // factory AcademySubscriptionArchive.fromJson(Map<String, dynamic> json) =>
  //     _$AcademySubscriptionArchiveFromJson(json);
  // Map<String, dynamic> toJson() => _$AcademySubscriptionArchiveToJson(this);

  @override
  List<Object?> get props => [
        academyId,
        academyName,
        subscriptionStartDate,
        subscriptionEndDate,
        sports,
        courses,
        coverPhoto,
        coverVideo,
        photos,
        videos
      ];
}
