import 'package:dartz/dartz.dart';
import 'package:x_sport/app/features/auth/domain/enitites/user_profile_entity.dart';

import '../../../../../../core/error/failure.dart';
import '../../repository/base_user_repository.dart';

class RegisterUseCase {
  final BaseUserRepository repository;

  RegisterUseCase(this.repository);

  Future<Either<Failure, UserProfileEntity>> call() async {
    return await repository.register();
  }
}
