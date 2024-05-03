import 'package:dartz/dartz.dart';
import '../enitites/about_stadium_entity.dart';

import '../../../../../core/error/failure.dart';
import '../repository/base_stadium_repository.dart';

class GetAboutStadiumUseCase {
  final BaseStadiumRepository repository;

  GetAboutStadiumUseCase(this.repository);

  Future<Either<Failure, AboutStadiumEntity>> call(
      {required int stadiumId}) async {
    return await repository.getAboutStadium(stadiumId: stadiumId);
  }
}
