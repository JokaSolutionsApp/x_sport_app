import 'package:dartz/dartz.dart';
import '../datasource/stadium_remote_datasource.dart';
import '../../domain/enitites/about_stadium_entity.dart';
import '../../domain/enitites/params/stadium_params.dart';
import '../../domain/enitites/stadiums_entity.dart';
import '../../domain/repository/base_stadium_repository.dart';
import '../../../../../core/error/exceptions.dart';
import '../../../../../core/error/failure.dart';

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
      return Left(ServerFailure(
        failuar.errorModel.statusCode,
        failuar.errorModel.message,
      ));
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
      return Left(ServerFailure(
        failuar.errorModel.statusCode,
        failuar.errorModel.message,
      ));
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
      return Left(ServerFailure(
        failuar.errorModel.statusCode,
        failuar.errorModel.message,
      ));
    }
  }
}
