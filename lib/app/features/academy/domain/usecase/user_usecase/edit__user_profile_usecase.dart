import 'package:dartz/dartz.dart';
import 'package:x_sport/app/features/auth/data/datasource/params/auth_params.dart';
import 'package:x_sport/app/features/auth/domain/enitites/user_profile_entity.dart';

import '../../../../../../core/error/failure.dart';
import '../../repository/base_academy_repository.dart';

class EditUserProfileUseCase {
  final BaseUserRepository repository;

  EditUserProfileUseCase(this.repository);

  Future<Either<Failure, UserProfileEntity>> call(
      {required EditUserProfileParams params}) async {
    return await repository.editUserProfile(params: params);
  }
}
