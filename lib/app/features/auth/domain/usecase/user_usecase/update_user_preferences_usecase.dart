import 'package:dartz/dartz.dart';
import 'package:x_sport/app/features/auth/domain/enitites/user_entity.dart';

import '../../../../../../core/error/failure.dart';
import '../../repository/base_user_repository.dart';

class UpdateUserPreferencesUseCase {
  final BaseUserRepository repository;

  UpdateUserPreferencesUseCase(this.repository);

  Future<Either<Failure, UserEntity>> call(
      int sportId, int favoriteHand, int favoritePos, int favoriteTime) async {
    return await repository.updateUserPreferences(
        sportId, favoriteHand, favoritePos, favoriteTime);
  }
}
