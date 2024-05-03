// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'academy_review_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AcademyReviewModel _$AcademyReviewModelFromJson(Map<String, dynamic> json) =>
    AcademyReviewModel(
      reviewId: json['reviewId'] as int,
      userId: json['userId'] as int,
      userName: json['userName'] as String,
      userImg: json['userImg'] as String,
      reviewContent: json['reviewContent'] as String,
      evaluation: (json['evaluation'] as num).toDouble(),
      reviewDateTime: json['reviewDateTime'] as String,
    );

Map<String, dynamic> _$AcademyReviewModelToJson(AcademyReviewModel instance) =>
    <String, dynamic>{
      'reviewId': instance.reviewId,
      'userId': instance.userId,
      'userName': instance.userName,
      'userImg': instance.userImg,
      'reviewContent': instance.reviewContent,
      'evaluation': instance.evaluation,
      'reviewDateTime': instance.reviewDateTime,
    };
