import 'package:dartz/dartz.dart';
import 'package:x_sport/app/features/auth/domain/enitites/user_profile_entity.dart';
import 'package:x_sport/app/features/auth/domain/repository/base_user_repository.dart';
import 'package:x_sport/core/error/failure.dart';

class GetUserProfileUseCase {
  final BaseUserRepository repository;

  GetUserProfileUseCase(this.repository);

  Future<Either<Failure, UserProfileEntity>> call() async {
    return await repository.getUserProfile();
  }
}
