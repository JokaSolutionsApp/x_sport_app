import 'package:dartz/dartz.dart';
import '../../../academy/domain/enitites/params/acedemy_params.dart';
import '../enitites/reservation_entity.dart';

import '../../../../../core/error/failure.dart';
import '../repository/base_match_repository.dart';

class GetReservedTimesUseCase {
  final BaseMatchRepository repository;

  GetReservedTimesUseCase(this.repository);

  Future<Either<Failure, List<ReservationEntity>>> call(
      {required ReserviedTimesParams params}) async {
    return await repository.getReservedTimes(params: params);
  }
}
