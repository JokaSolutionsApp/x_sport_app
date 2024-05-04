import 'package:dartz/dartz.dart';
import 'package:x_sport/app/features/match/domain/enitites/params/match_reservation_params.dart';

import '../../../../../core/error/failure.dart';
import '../repository/base_match_repository.dart';

class ReserveUseCase {
  final BaseMatchRepository repository;

  ReserveUseCase(this.repository);

  Future<Either<Failure, bool>> call(
      {required ReservationParams params}) async {
    return await repository.reserve(params: params);
  }
}
