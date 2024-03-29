import 'package:dartz/dartz.dart';
import '../../repository/base_user_repository.dart';
import '../../../../../../core/error/failure.dart';

class DeleteUserProfileUseCase {
  final BaseUserRepository repository;

  DeleteUserProfileUseCase(this.repository);

  Future<Either<Failure, bool>> call() async {
    return await repository.deleteUserProfile();
  }
}
