import 'package:dartz/dartz.dart';
import 'package:x_sport/app/features/academy/data/datasource/academy_remote_datasource.dart';
import 'package:x_sport/app/features/academy/domain/enitites/about_academy_entity.dart';
import 'package:x_sport/app/features/academy/domain/enitites/academy_course_entity.dart';
import 'package:x_sport/app/features/academy/domain/enitites/academy_membership_entity.dart';
import 'package:x_sport/app/features/academy/domain/enitites/academy_review_entity.dart';
import 'package:x_sport/app/features/academy/domain/enitites/get_academy_courses_entity.dart';
import 'package:x_sport/app/features/academy/domain/enitites/params/acedemy_params.dart';
import 'package:x_sport/app/features/academy/domain/enitites/suggested_academy_entity.dart';
import 'package:x_sport/app/features/academy/domain/repository/base_academy_repository.dart';
import 'package:x_sport/app/features/auth/domain/enitites/sport_entity.dart';
import 'package:x_sport/core/error/exceptions.dart';
import 'package:x_sport/core/error/failure.dart';

class AcademyRepository extends BaseAcademyRepository {
  final BaseAcademyRemoteDataSource baseAcademyRemoteDataSource;

  AcademyRepository(this.baseAcademyRemoteDataSource);

  @override
  Future<Either<Failure, List<AcademyMembershipEntity>>>
      getSportsMembership() async {
    try {
      final result = await baseAcademyRemoteDataSource.getSportsMembership();

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(failuar.errorModel.statusCode));
    }
  }

  @override
  Future<Either<Failure, List<SuggestedAcademyEntity>>> getSuggestedAcademies(
      {required SuggestedAcademyParams params}) async {
    try {
      final result = await baseAcademyRemoteDataSource.getSuggestedAcademies(
          params: params);

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(failuar.errorModel.statusCode));
    }
  }

  @override
  Future<Either<Failure, AboutAcademyEntity>> getAboutAcademy(
      {required int academyId}) async {
    try {
      final result = await baseAcademyRemoteDataSource.getAboutAcademy(
          academyId: academyId);

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(failuar.errorModel.statusCode));
    }
  }

  @override
  Future<Either<Failure, GetAcademyCoursesEntity>> getAcademyCourses(
      {required int academyId}) async {
    try {
      final result = await baseAcademyRemoteDataSource.getAcademyCourses(
          academyId: academyId);

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(failuar.errorModel.statusCode));
    }
  }

  @override
  Future<Either<Failure, GetAcademyCoursesEntity>> getAcademyCoursesInDate(
      {required int academyId, required String targetDate}) async {
    try {
      final result = await baseAcademyRemoteDataSource.getAcademyCoursesInDate(
        academyId: academyId,
        targetDate: targetDate,
      );

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(failuar.errorModel.statusCode));
    }
  }

  @override
  Future<Either<Failure, List<AcademyReviewEntity>>> getAcademyReview(
      {required int academyId}) async {
    try {
      final result = await baseAcademyRemoteDataSource.getAcademyReview(
          academyId: academyId);

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(failuar.errorModel.statusCode));
    }
  }
}
