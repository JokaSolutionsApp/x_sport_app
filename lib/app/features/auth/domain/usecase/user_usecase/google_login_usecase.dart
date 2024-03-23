import 'package:dartz/dartz.dart';
import 'package:x_sport/app/features/auth/domain/enitites/user_profile_entity.dart';
import 'package:x_sport/app/features/auth/domain/params/google_login_params.dart';

import '../../../../../../core/error/failure.dart';
import '../../repository/base_user_repository.dart';

class GoogleLoginUseCase {
  final BaseUserRepository repository;

  GoogleLoginUseCase(this.repository);

  Future<Either<Failure, UserProfileEntity>> call() async {
    return await repository.googleLogin();
  }
}
