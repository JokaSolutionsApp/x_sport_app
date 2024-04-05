import 'package:dartz/dartz.dart';

import '../../../../../core/error/failure.dart';
import '../enitites/get_courses_to_subscribe_entity.dart';
import '../repository/base_academy_repository.dart';

class GetCoursesToSubscribeInDateUseCase {
  final BaseAcademyRepository repository;

  GetCoursesToSubscribeInDateUseCase(this.repository);

  Future<Either<Failure, GetCoursesToSubscribeEntity>> call(
      {required int academyId, required String targetDate}) async {
    return await repository.getCoursesToSubscribeInDate(
      academyId: academyId,
      targetDate: targetDate,
    );
  }
}
