import 'package:dartz/dartz.dart';
import 'package:x_sport/app/features/match/domain/enitites/params/match_reservation_params.dart';

import '../../../../../core/error/failure.dart';
import '../enitites/reservation_entity.dart';
import '../repository/base_match_repository.dart';

class GetReservedTimesUseCase {
  final BaseMatchRepository repository;

  GetReservedTimesUseCase(this.repository);

  Future<Either<Failure, List<ReservationEntity>>> call(
      {required ReserviedTimesParams params}) async {
    return await repository.getReservedTimes(params: params);
  }
}
