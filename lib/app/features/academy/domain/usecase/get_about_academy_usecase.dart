import 'package:dartz/dartz.dart';
import 'package:x_sport/app/features/auth/domain/enitites/sport_entity.dart';

import '../../../../../core/error/failure.dart';
import '../repository/base_academy_repository.dart';

class GetAboutAcademyUseCase {
  final BaseAcademyRepository repository;

  GetAboutAcademyUseCase(this.repository);

  Future<Either<Failure, List<SportEntity>>> call() async {
    return await repository.getAboutAcademy();
  }
}
