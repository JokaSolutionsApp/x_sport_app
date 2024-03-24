import 'package:json_annotation/json_annotation.dart';
import '../../domain/enitites/academy_review_entity.dart';

part 'academy_review_model.g.dart';

@JsonSerializable()
class AcademyReviewModel extends AcademyReviewEntity {
  AcademyReviewModel({
    required super.reviewId,
    required super.userId,
    required super.userName,
    required super.userImg,
    required super.reviewContent,
    required super.evaluation,
    required super.reviewDateTime,
  });

  factory AcademyReviewModel.fromJson(Map<String, dynamic> json) =>
      _$AcademyReviewModelFromJson(json);
  Map<String, dynamic> toJson() => _$AcademyReviewModelToJson(this);
}
