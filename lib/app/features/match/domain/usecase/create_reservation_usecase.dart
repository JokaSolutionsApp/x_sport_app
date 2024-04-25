import 'package:dartz/dartz.dart';

import '../../../../../core/error/failure.dart';
import '../repository/base_match_repository.dart';

class CreateReservationUseCase {
  final BaseMatchRepository repository;

  CreateReservationUseCase(this.repository);

  Future<Either<Failure, bool>> call() async {
    return await repository.creatReservation();
  }
}
