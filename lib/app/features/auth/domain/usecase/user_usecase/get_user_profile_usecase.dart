import 'package:dartz/dartz.dart';
import '../../enitites/user_profile_entity.dart';
import '../../repository/base_user_repository.dart';
import '../../../../../../core/error/failure.dart';

class GetUserProfileUseCase {
  final BaseUserRepository repository;

  GetUserProfileUseCase(this.repository);

  Future<Either<Failure, UserProfileEntity>> call() async {
    return await repository.getUserProfile();
  }
}
