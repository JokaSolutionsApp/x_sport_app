import 'package:dartz/dartz.dart';
import 'package:x_sport/app/features/auth/domain/enitites/user_entity.dart';

import '../../../../../../core/error/failure.dart';
import '../../repository/base_user_repository.dart';

class SignInUseCase {
  final BaseUserRepository repository;

  SignInUseCase(this.repository);

  Future<Either<Failure, UserEntity>> call() async {
    return await repository.signIn();
  }
}
