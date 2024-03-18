import 'package:dartz/dartz.dart';
import 'package:x_sport/app/features/academy/data/datasource/academy_remote_datasource.dart';
import 'package:x_sport/app/features/academy/domain/repository/base_academy_repository.dart';
import 'package:x_sport/app/features/auth/domain/enitites/sport_entity.dart';
import 'package:x_sport/core/error/exceptions.dart';
import 'package:x_sport/core/error/failure.dart';

class AcademyRepository extends BaseAcademyRepository {
  final BaseAcademyRemoteDataSource baseAcademyRemoteDataSource;

  AcademyRepository(this.baseAcademyRemoteDataSource);

  @override
  Future<Either<Failure, List<SportEntity>>> getSportsMembership() async {
    try {
      final result = await baseAcademyRemoteDataSource.getSportsMembership();

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(failuar.errorModel.statusCode));
    }
  }

  @override
  Future<Either<Failure, List<SportEntity>>> getSuggestedAcademies() async {
    try {
      final result = await baseAcademyRemoteDataSource.getSuggestedAcademies();

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(failuar.errorModel.statusCode));
    }
  }

  @override
  Future<Either<Failure, List<SportEntity>>> getAboutAcademy() async {
    try {
      final result = await baseAcademyRemoteDataSource.getAboutAcademy();

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(failuar.errorModel.statusCode));
    }
  }

  @override
  Future<Either<Failure, List<SportEntity>>> getAcademyCourses() async {
    try {
      final result = await baseAcademyRemoteDataSource.getAcademyCourses();

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(failuar.errorModel.statusCode));
    }
  }

  @override
  Future<Either<Failure, List<SportEntity>>> getAcademyCoursesInDate() async {
    try {
      final result =
          await baseAcademyRemoteDataSource.getAcademyCoursesInDate();

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(failuar.errorModel.statusCode));
    }
  }

  @override
  Future<Either<Failure, List<SportEntity>>> getAcademyReview() async {
    try {
      final result = await baseAcademyRemoteDataSource.getAcademyReview();

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(failuar.errorModel.statusCode));
    }
  }
}
