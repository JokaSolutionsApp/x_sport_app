import 'package:dartz/dartz.dart';
import '../enitites/params/acedemy_params.dart';
import '../../../../../core/error/failure.dart';
import '../repository/base_academy_repository.dart';

class InrollUserInCourseUseCase {
  final BaseAcademyRepository repository;

  InrollUserInCourseUseCase(this.repository);

  Future<Either<Failure, bool>> call(
      {required InrollUserInCourseParams params}) async {
    return await repository.inrollUserInCourse(params: params);
  }
}
