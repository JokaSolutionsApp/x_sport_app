import 'package:dartz/dartz.dart';
import 'package:x_sport/app/features/academy/domain/enitites/academy_entity.dart';
import '../enitites/params/acedemy_params.dart';

import '../../../../../core/error/failure.dart';
import '../repository/base_academy_repository.dart';

class GetAllAcademiesUseCase {
  final BaseAcademyRepository repository;

  GetAllAcademiesUseCase(this.repository);

  Future<Either<Failure, AcademyEntity>> call(
      {required AllAcademiesParams params}) async {
    return await repository.getAllAcademies(params: params);
  }
}
