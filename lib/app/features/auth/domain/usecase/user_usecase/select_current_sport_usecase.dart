import 'package:dartz/dartz.dart';

import '../../../../../../core/error/failure.dart';
import '../../enitites/user_profile_entity.dart';
import '../../repository/base_user_repository.dart';

class SelectCurrentSportUseCase {
  final BaseUserRepository repository;

  SelectCurrentSportUseCase(this.repository);

  Future<Either<Failure, UserProfileEntity>> call(
      {required int sportId}) async {
    return await repository.selectCurrentSport(sportId: sportId);
  }
}
