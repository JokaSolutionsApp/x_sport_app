import 'package:dartz/dartz.dart';
import '../enitites/about_academy_entity.dart';
import '../enitites/academy_course_entity.dart';
import '../enitites/academy_membership_entity.dart';
import '../enitites/academy_review_entity.dart';
import '../enitites/get_academy_courses_entity.dart';
import '../enitites/params/acedemy_params.dart';
import '../enitites/suggested_academy_entity.dart';
import '../../../auth/domain/enitites/sport_entity.dart';
import '../../../../../core/error/failure.dart';

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
