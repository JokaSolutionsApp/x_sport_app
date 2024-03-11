import 'package:dartz/dartz.dart';
import 'package:x_sport/app/features/auth/domain/enitites/user_profile_entity.dart';

import '../../../../../../core/error/failure.dart';
import '../../repository/base_user_repository.dart';

class CompleteRegistrationUseCase {
  final BaseUserRepository repository;

  CompleteRegistrationUseCase(this.repository);

  Future<Either<Failure, UserProfileEntity>> call(
      List<int> imageBytes, String imageType, List<int> sportsIds) async {
    return await repository.completeRegistration(
        imageBytes, imageType, sportsIds);
  }
}
