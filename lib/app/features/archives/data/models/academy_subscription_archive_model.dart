import 'package:json_annotation/json_annotation.dart';
import 'package:x_sport/app/features/archives/data/models/academy_subscription_courses_model.dart';
import '../../domain/enitites/academy_subscription_archive_entity.dart';
part 'academy_subscription_archive_model.g.dart';

@JsonSerializable()
class SubscriptionArchiveModel extends AcademySubscriptionArchive {
  const SubscriptionArchiveModel({
    required int academyId,
    required String academyName,
    required String subscriptionStartDate,
    required String subscriptionEndDate,
    required List<String> sports,
    required List<AcademySubscriptionCourseModel> courses,
    required String coverPhoto,
    required String coverVideo,
    required List<String> photos,
    required List<String> videos,
  }) : super(
          academyId: academyId,
          academyName: academyName,
          subscriptionStartDate: subscriptionStartDate,
          subscriptionEndDate: subscriptionEndDate,
          sports: sports,
          courses: courses,
          coverPhoto: coverPhoto,
          coverVideo: coverVideo,
          photos: photos,
          videos: videos,
        );

  factory SubscriptionArchiveModel.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionArchiveModelFromJson(json);
  Map<String, dynamic> toJson() => _$SubscriptionArchiveModelToJson(this);
}
