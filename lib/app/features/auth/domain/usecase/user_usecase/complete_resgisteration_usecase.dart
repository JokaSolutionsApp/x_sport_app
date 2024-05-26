import 'package:dartz/dartz.dart';
import '../../enitites/user_profile_entity.dart';

import '../../../../../../core/error/failure.dart';
import '../../repository/base_user_repository.dart';

class CompleteRegistrationUseCase {
  final BaseUserRepository repository;

  CompleteRegistrationUseCase(this.repository);

  Future<Either<Failure, UserProfileEntity>> call(
    List<int> imageBytes,
    String imageType,
  ) async {
    return await repository.completeRegistration(imageBytes, imageType);
  }
}
