import 'package:dartz/dartz.dart';
import '../enitites/get_academy_courses_entity.dart';
import '../../../auth/domain/enitites/sport_entity.dart';

import '../../../../../core/error/failure.dart';
import '../repository/base_academy_repository.dart';

class GetAcademyCoursesInDateUseCase {
  final BaseAcademyRepository repository;

  GetAcademyCoursesInDateUseCase(this.repository);

  Future<Either<Failure, GetAcademyCoursesEntity>> call(
      {required int academyId, required String targetDate}) async {
    return await repository.getAcademyCoursesInDate(
      academyId: academyId,
      targetDate: targetDate,
    );
  }
}
