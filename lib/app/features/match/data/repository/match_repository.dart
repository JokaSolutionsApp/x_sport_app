import 'package:dartz/dartz.dart';
import 'package:x_sport/app/features/match/domain/enitites/params/match_reservation_params.dart';

import '../../../../../core/error/exceptions.dart';
import '../../../../../core/error/failure.dart';
import '../../domain/enitites/reservation_entity.dart';
import '../../domain/enitites/sport_entity.dart';
import '../../domain/enitites/sport_stadium_entity.dart';
import '../../domain/repository/base_match_repository.dart';
import '../datasource/match_remote_datasource.dart';

class MatchRepository extends BaseMatchRepository {
  final BaseMatchRemoteDataSource baseMatchRemoteDataSource;

  MatchRepository(this.baseMatchRemoteDataSource);

  @override
  Future<Either<Failure, List<SportEntity>>> getSports() async {
    try {
      final result = await baseMatchRemoteDataSource.getSports();
      return Right(result);
    } on ServerException catch (failuar) {
      return Left(
        ServerFailure(
          failuar.errorModel.statusCode,
          failuar.errorModel.message,
        ),
      );
    }
  }

  @override
  Future<Either<Failure, bool>> reserve(
      {required ReservationParams params}) async {
    try {
      final result =
          await baseMatchRemoteDataSource.createReservation(params: params);
      return Right(result);
    } on ServerException catch (failuar) {
      return Left(
        ServerFailure(
          failuar.errorModel.statusCode,
          failuar.errorModel.message,
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<ReservationEntity>>> getReservedTimes(
      {required ReserviedTimesParams params}) async {
    try {
      final result = await baseMatchRemoteDataSource.getReservedTimes();
      return Right(result);
    } on ServerException catch (failuar) {
      return Left(
        ServerFailure(
          failuar.errorModel.statusCode,
          failuar.errorModel.message,
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<SportStadiumEntity>>> getSportsStadium({
    required StadiumParams params,
  }) async {
    try {
      final result = await baseMatchRemoteDataSource.getsportStadiums(
        params: params,
      );
      return Right(result);
    } on ServerException catch (failuar) {
      return Left(
        ServerFailure(
          failuar.errorModel.statusCode,
          failuar.errorModel.message,
        ),
      );
    }
  }
}
