import 'package:dartz/dartz.dart';
import 'package:x_sport/app/features/academy/domain/enitites/about_academy_entity.dart';

import '../../../../../core/error/failure.dart';
import '../repository/base_academy_repository.dart';

class GetAboutAcademyUseCase {
  final BaseAcademyRepository repository;

  GetAboutAcademyUseCase(this.repository);

  Future<Either<Failure, AboutAcademyEntity>> call(
      {required int academyId}) async {
    return await repository.getAboutAcademy(academyId: academyId);
  }
}
