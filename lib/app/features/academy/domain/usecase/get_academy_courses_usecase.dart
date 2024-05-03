import 'package:dartz/dartz.dart';
import 'package:x_sport/app/features/academy/domain/enitites/params/acedemy_params.dart';
import '../enitites/get_courses_to_subscribe_entity.dart';
import '../../../../../core/error/failure.dart';
import '../repository/base_academy_repository.dart';

class GetCoursesToSubscribeUseCase {
  final BaseAcademyRepository repository;

  GetCoursesToSubscribeUseCase(this.repository);

  Future<Either<Failure, List<GetCoursesToSubscribeEntity>>> call(
      {required CourseParams params}) async {
    return await repository.getCoursesToSubscribe(params: params);
  }
}
