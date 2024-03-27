import 'package:dartz/dartz.dart';

import '../../../../../core/error/failure.dart';
import '../enitites/academy_membership_entity.dart';
import '../repository/base_academy_repository.dart';

class GetSportsMembershipUseCase {
  final BaseAcademyRepository repository;

  GetSportsMembershipUseCase(this.repository);

  Future<Either<Failure, List<AcademyMembershipEntity>>> call() async {
    return await repository.getSportsMembership();
  }
}
