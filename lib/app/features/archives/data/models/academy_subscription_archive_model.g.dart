// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'academy_subscription_archive_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubscriptionArchiveModel _$SubscriptionArchiveModelFromJson(
        Map<String, dynamic> json) =>
    SubscriptionArchiveModel(
      academyId: json['academyId'] as int,
      academyName: json['academyName'] as String,
      subscriptionStartDate: json['subscriptionStartDate'] as String,
      subscriptionEndDate: json['subscriptionEndDate'] as String,
      sports:
          (json['sports'] as List<dynamic>).map((e) => e as String).toList(),
      courses: (json['courses'] as List<dynamic>)
          .map((e) => AcademySubscriptionCourseModel.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      coverPhoto: json['coverPhoto'] as String,
      coverVideo: json['coverVideo'] as String,
      photos:
          (json['photos'] as List<dynamic>).map((e) => e as String).toList(),
      videos:
          (json['videos'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$SubscriptionArchiveModelToJson(
        SubscriptionArchiveModel instance) =>
    <String, dynamic>{
      'academyId': instance.academyId,
      'academyName': instance.academyName,
      'subscriptionStartDate': instance.subscriptionStartDate,
      'subscriptionEndDate': instance.subscriptionEndDate,
      'sports': instance.sports,
      'courses': instance.courses,
      'coverPhoto': instance.coverPhoto,
      'coverVideo': instance.coverVideo,
      'photos': instance.photos,
      'videos': instance.videos,
    };
