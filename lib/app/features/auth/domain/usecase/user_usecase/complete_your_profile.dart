import 'package:dartz/dartz.dart';
import '../../enitites/user_profile_entity.dart';

import '../../../../../../core/error/failure.dart';
import '../../repository/base_user_repository.dart';

class CompleteYourProfileUseCase {
  final BaseUserRepository repository;

  CompleteYourProfileUseCase(this.repository);

  Future<Either<Failure, UserProfileEntity>> call({
    required String name,
    required String phone,
  }) async {
    return await repository.completeYourProfile(name, phone);
  }
}
