import 'package:dartz/dartz.dart';
import '../../../data/datasource/params/auth_params.dart';
import '../../enitites/user_profile_entity.dart';

import '../../../../../../core/error/failure.dart';
import '../../repository/base_user_repository.dart';

class EditUserProfileUseCase {
  final BaseUserRepository repository;

  EditUserProfileUseCase(this.repository);

  Future<Either<Failure, UserProfileEntity>> call(
      {required EditUserProfileParams params}) async {
    return await repository.editUserProfile(params: params);
  }
}
