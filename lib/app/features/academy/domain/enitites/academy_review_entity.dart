import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class AcademyReviewEntity extends Equatable {
  @JsonKey(name: 'reviewId')
  final int reviewId;
  @JsonKey(name: 'userId')
  final int userId;
  @JsonKey(name: 'userName')
  final String userName;
  @JsonKey(name: 'userImg')
  final String userImg;
  @JsonKey(name: 'reviewContent')
  final String reviewContent;
  @JsonKey(name: 'evaluation')
  final double
      evaluation; // Adjusted to double assuming evaluation is a decimal
  @JsonKey(name: 'reviewDateTime')
  final String reviewDateTime;

  AcademyReviewEntity({
    required this.reviewId,
    required this.userId,
    required this.userName,
    required this.userImg,
    required this.reviewContent,
    required this.evaluation,
    required this.reviewDateTime,
  });

  @override
  List<Object?> get props => [
        reviewId,
        userId,
        userName,
        userImg,
        reviewContent,
        evaluation,
        reviewDateTime,
      ];
}
