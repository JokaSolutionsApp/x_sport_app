import 'package:dartz/dartz.dart';

import '../../../../../core/error/failure.dart';
import '../enitites/sport_entity.dart';
import '../repository/base_match_repository.dart';

class GetStadiumSportsUseCase {
  final BaseMatchRepository repository;

  GetStadiumSportsUseCase(this.repository);

  Future<Either<Failure, List<SportEntity>>> call() async {
    return await repository.getSports();
  }
}
