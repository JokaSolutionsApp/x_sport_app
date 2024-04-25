import 'package:dartz/dartz.dart';
import '../../domain/enitites/academy_entity.dart';

import '../../../../../core/error/exceptions.dart';
import '../../../../../core/error/failure.dart';
import '../../domain/enitites/about_academy_entity.dart';
import '../../domain/enitites/academy_membership_entity.dart';
import '../../domain/enitites/academy_review_entity.dart';
import '../../domain/enitites/get_courses_to_subscribe_entity.dart';
import '../../domain/enitites/params/acedemy_params.dart';
import '../../domain/repository/base_academy_repository.dart';
import '../datasource/academy_remote_datasource.dart';

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
      return Left(ServerFailure(
        failuar.errorModel.statusCode,
        failuar.errorModel.message,
      ));
    }
  }

  @override
  Future<Either<Failure, AcademyEntity>> getSuggestedAcademies(
      {required SuggestedAcademyParams params}) async {
    try {
      final result = await baseAcademyRemoteDataSource.getSuggestedAcademies(
          params: params);

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(
        failuar.errorModel.statusCode,
        failuar.errorModel.message,
      ));
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
      return Left(ServerFailure(
        failuar.errorModel.statusCode,
        failuar.errorModel.message,
      ));
    }
  }

  @override
  Future<Either<Failure, List<GetCoursesToSubscribeEntity>>>
      getCoursesToSubscribe({required CourseParams params}) async {
    try {
      final result = await baseAcademyRemoteDataSource.getCoursesToSubscribe(
          params: params);

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(
        failuar.errorModel.statusCode,
        failuar.errorModel.message,
      ));
    }
  }

  @override
  Future<Either<Failure, GetCoursesToSubscribeEntity>>
      getCoursesToSubscribeInDate(
          {required int academyId, required String targetDate}) async {
    try {
      final result =
          await baseAcademyRemoteDataSource.getCoursesToSubscribeInDate(
        academyId: academyId,
        targetDate: targetDate,
      );

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(
        failuar.errorModel.statusCode,
        failuar.errorModel.message,
      ));
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
      return Left(ServerFailure(
        failuar.errorModel.statusCode,
        failuar.errorModel.message,
      ));
    }
  }

  @override
  Future<Either<Failure, AcademyEntity>> getAllAcademies(
      {required AllAcademiesParams params}) async {
    try {
      final result =
          await baseAcademyRemoteDataSource.getAllAcademies(params: params);

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(
        failuar.errorModel.statusCode,
        failuar.errorModel.message,
      ));
    }
  }

  @override
  Future<Either<Failure, bool>> inrollUserInCourse(
      {required InrollUserInCourseParams params}) async {
    try {
      final result =
          await baseAcademyRemoteDataSource.inrollUserInCourse(params: params);

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(
        failuar.errorModel.statusCode,
        failuar.errorModel.message,
      ));
    }
  }

  @override
  Future<Either<Failure, bool>> addAcademyReview(
      {required AddAcademyReviewParams params}) async {
    try {
      final result =
          await baseAcademyRemoteDataSource.addAcademyReview(params: params);

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(
        failuar.errorModel.statusCode,
        failuar.errorModel.message,
      ));
    }
  }
}
