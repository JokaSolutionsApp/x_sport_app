import 'package:dartz/dartz.dart';
import '../../enitites/user_profile_entity.dart';

import '../../../../../../core/error/failure.dart';
import '../../repository/base_user_repository.dart';

class AddFavoriteSportsUseCase {
  final BaseUserRepository repository;

  AddFavoriteSportsUseCase(this.repository);

  Future<Either<Failure, UserProfileEntity>> call(
      {required List<int> sportsIds}) async {
    return await repository.addFavoriteSports(sportsIds: sportsIds);
  }
}
