import 'package:dartz/dartz.dart';
import 'package:x_sport/app/features/auth/domain/repository/base_user_repository.dart';
import 'package:x_sport/core/error/failure.dart';

class DeleteUserProfileUseCase {
  final BaseUserRepository repository;

  DeleteUserProfileUseCase(this.repository);

  Future<Either<Failure, bool>> call() async {
    return await repository.deleteUserProfile();
  }
}
