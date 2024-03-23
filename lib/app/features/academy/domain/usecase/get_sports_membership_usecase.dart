import 'package:dartz/dartz.dart';
import 'package:x_sport/app/features/academy/domain/enitites/academy_membership_entity.dart';
import 'package:x_sport/app/features/auth/domain/enitites/sport_entity.dart';

import '../../../../../core/error/failure.dart';
import '../repository/base_academy_repository.dart';

class GetSportsMembershipUseCase {
  final BaseAcademyRepository repository;

  GetSportsMembershipUseCase(this.repository);

  Future<Either<Failure, List<AcademyMembershipEntity>>> call() async {
    return await repository.getSportsMembership();
  }
}
