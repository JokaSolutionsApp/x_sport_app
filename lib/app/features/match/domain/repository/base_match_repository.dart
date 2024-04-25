import 'package:dartz/dartz.dart';
import '../../../academy/domain/enitites/params/acedemy_params.dart';
import '../enitites/reservation_entity.dart';
import '../enitites/sport_stadium_entity.dart';

import '../../../../../core/error/failure.dart';
import '../enitites/sport_entity.dart';

abstract class BaseMatchRepository {
  Future<Either<Failure, List<SportEntity>>> getSports();
  Future<Either<Failure, List<SportStadiumEntity>>> getSportsStadium(
      {required StadiumParams params});
  Future<Either<Failure, List<ReservationEntity>>> getReservedTimes(
      {required ReserviedTimesParams params});
  Future<Either<Failure, bool>> creatReservation();
}
