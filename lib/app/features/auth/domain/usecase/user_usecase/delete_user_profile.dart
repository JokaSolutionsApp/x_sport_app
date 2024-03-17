import 'package:dartz/dartz.dart';
import 'package:x_sport/app/features/auth/domain/enitites/user_profile_entity.dart';

import '../../../../../../core/error/failure.dart';
import '../../repository/base_user_repository.dart';

class DeleteUserProfileUseCase {
  final BaseUserRepository repository;

  DeleteUserProfileUseCase(this.repository);

  Future<Either<Failure, bool>> call() async {
    return await repository.deleteUserProfile();
  }
}