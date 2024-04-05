import 'package:dartz/dartz.dart';
import '../enitites/params/acedemy_params.dart';
import '../enitites/suggested_academy_entity.dart';

import '../../../../../core/error/failure.dart';
import '../repository/base_academy_repository.dart';

class GetAllAcademiesUseCase {
  final BaseAcademyRepository repository;

  GetAllAcademiesUseCase(this.repository);

  Future<Either<Failure, List<SuggestedAcademyEntity>>> call(
      {required AllAcademiesParams params}) async {
    return await repository.getAllAcademies(params: params);
  }
}
