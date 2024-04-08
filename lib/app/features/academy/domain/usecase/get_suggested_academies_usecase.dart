import 'package:dartz/dartz.dart';
import 'package:x_sport/app/features/academy/domain/enitites/academy_entity.dart';
import '../enitites/params/acedemy_params.dart';
import '../enitites/suggested_academy_entity.dart';

import '../../../../../core/error/failure.dart';
import '../repository/base_academy_repository.dart';

class GetSuggestedAcademiesUseCase {
  final BaseAcademyRepository repository;

  GetSuggestedAcademiesUseCase(this.repository);

  Future<Either<Failure, AcademyEntity>> call(
      {required SuggestedAcademyParams params}) async {
    return await repository.getSuggestedAcademies(params: params);
  }
}
