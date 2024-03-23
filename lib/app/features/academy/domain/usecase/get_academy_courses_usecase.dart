import 'package:dartz/dartz.dart';
import 'package:x_sport/app/features/academy/domain/enitites/academy_course_entity.dart';
import 'package:x_sport/app/features/academy/domain/enitites/get_academy_courses_entity.dart';
import 'package:x_sport/app/features/auth/domain/enitites/sport_entity.dart';

import '../../../../../core/error/failure.dart';
import '../repository/base_academy_repository.dart';

class GetAcademyCoursesUseCase {
  final BaseAcademyRepository repository;

  GetAcademyCoursesUseCase(this.repository);

  Future<Either<Failure, GetAcademyCoursesEntity>> call(
      {required int academyId}) async {
    return await repository.getAcademyCourses(academyId: academyId);
  }
}
