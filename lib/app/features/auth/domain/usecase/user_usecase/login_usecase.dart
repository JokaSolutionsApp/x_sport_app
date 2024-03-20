import 'package:dartz/dartz.dart';
import '../../enitites/user_profile_entity.dart';

import '../../../../../../core/error/failure.dart';
import '../../repository/base_user_repository.dart';

class LoginUseCase {
  final BaseUserRepository repository;

  LoginUseCase(this.repository);

  Future<Either<Failure, UserProfileEntity>> call() async {
    return await repository.login();
  }
}
