import 'package:dartz/dartz.dart';
import 'package:x_sport/app/features/auth/domain/enitites/user_profile_entity.dart';

import '../../../../../../core/error/failure.dart';
import '../../repository/base_user_repository.dart';

class DeleteFavoriteSportsUseCase {
  final BaseUserRepository repository;

  DeleteFavoriteSportsUseCase(this.repository);

  Future<Either<Failure, UserProfileEntity>> call(
      {required List<int> sportsIds}) async {
    return await repository.deleteFavoriteSports(sportsIds: sportsIds);
  }
}
