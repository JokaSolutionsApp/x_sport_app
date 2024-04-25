import 'package:dartz/dartz.dart';

import '../../../../../../core/error/failure.dart';
import '../../enitites/user_profile_entity.dart';
import '../../repository/base_user_repository.dart';

class GoogleLoginUseCase {
  final BaseUserRepository repository;

  GoogleLoginUseCase(this.repository);

  Future<Either<Failure, UserProfileEntity>> call() async {
    return await repository.googleLogin();
  }
}
