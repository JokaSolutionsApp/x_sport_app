import 'package:dartz/dartz.dart';
import 'package:x_sport/app/features/courts/data/datasource/stadium_remote_datasource.dart';
import 'package:x_sport/app/features/courts/domain/enitites/about_stadium_entity.dart';
import 'package:x_sport/app/features/courts/domain/enitites/params/stadium_params.dart';
import 'package:x_sport/app/features/courts/domain/enitites/stadiums_entity.dart';
import 'package:x_sport/app/features/courts/domain/repository/base_stadium_repository.dart';
import 'package:x_sport/core/error/exceptions.dart';
import 'package:x_sport/core/error/failure.dart';

class StadiumRepository extends BaseStadiumRepository {
  final BaseStadiumRemoteDataSource baseStadiumRemoteDataSource;

  StadiumRepository(this.baseStadiumRemoteDataSource);

  @override
  Future<Either<Failure, AboutStadiumEntity>> getAboutStadium(
      {required int stadiumId}) async {
    try {
      final result = await baseStadiumRemoteDataSource.getAboutStadium(
        stadiumId: stadiumId,
      );

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(failuar.errorModel.statusCode));
    }
  }

  @override
  Future<Either<Failure, List<StadiumEntity>>> getFriendsStadiums(
      {required StadiumPrams params}) async {
    try {
      final result = await baseStadiumRemoteDataSource.getFriendsStadiums(
        params: params,
      );

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(failuar.errorModel.statusCode));
    }
  }

  @override
  Future<Either<Failure, List<StadiumEntity>>> getNearByStadiums(
      {required StadiumPrams params}) async {
    try {
      final result = await baseStadiumRemoteDataSource.getNearByStadiums(
        params: params,
      );

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(failuar.errorModel.statusCode));
    }
  }
}
