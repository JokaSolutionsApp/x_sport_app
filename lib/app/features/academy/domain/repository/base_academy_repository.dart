import 'package:dartz/dartz.dart';
import 'package:x_sport/app/features/academy/domain/enitites/about_academy_entity.dart';
import 'package:x_sport/app/features/academy/domain/enitites/academy_course_entity.dart';
import 'package:x_sport/app/features/academy/domain/enitites/academy_membership_entity.dart';
import 'package:x_sport/app/features/academy/domain/enitites/academy_review_entity.dart';
import 'package:x_sport/app/features/academy/domain/enitites/get_academy_courses_entity.dart';
import 'package:x_sport/app/features/academy/domain/enitites/params/acedemy_params.dart';
import 'package:x_sport/app/features/academy/domain/enitites/suggested_academy_entity.dart';
import 'package:x_sport/app/features/auth/domain/enitites/sport_entity.dart';
import 'package:x_sport/core/error/failure.dart';

abstract class BaseAcademyRepository {
  Future<Either<Failure, List<AcademyMembershipEntity>>> getSportsMembership();
  Future<Either<Failure, List<SuggestedAcademyEntity>>> getSuggestedAcademies(
      {required SuggestedAcademyParams params});
  Future<Either<Failure, AboutAcademyEntity>> getAboutAcademy(
      {required int academyId});
  Future<Either<Failure, GetAcademyCoursesEntity>> getAcademyCourses(
      {required int academyId});
  Future<Either<Failure, GetAcademyCoursesEntity>> getAcademyCoursesInDate(
      {required int academyId, required String targetDate});
  Future<Either<Failure, List<AcademyReviewEntity>>> getAcademyReview(
      {required int academyId});
}
