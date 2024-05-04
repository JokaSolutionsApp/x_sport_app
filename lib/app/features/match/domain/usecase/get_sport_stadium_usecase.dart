import 'package:dartz/dartz.dart';
import 'package:x_sport/app/features/match/domain/enitites/params/match_reservation_params.dart';

import '../../../../../core/error/failure.dart';
import '../enitites/sport_stadium_entity.dart';
import '../repository/base_match_repository.dart';

class GetsportStadiumUseCase {
  final BaseMatchRepository repository;

  GetsportStadiumUseCase(this.repository);

  Future<Either<Failure, List<SportStadiumEntity>>> call(
      {required StadiumParams params}) async {
    return await repository.getSportsStadium(params: params);
  }
}
