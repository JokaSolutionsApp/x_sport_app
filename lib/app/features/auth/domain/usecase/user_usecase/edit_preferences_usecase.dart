import 'package:dartz/dartz.dart';
import 'package:x_sport/app/features/auth/domain/enitites/user_profile_entity.dart';
import 'package:x_sport/app/features/auth/domain/params/edit_preferences_params.dart';

import '../../../../../../core/error/failure.dart';
import '../../repository/base_user_repository.dart';

class EditPreferencesUseCase {
  final BaseUserRepository repository;

  EditPreferencesUseCase(this.repository);

  Future<Either<Failure, UserProfileEntity>> call(
      {required PreferenceValue params}) async {
    return await repository.editPreferences(params: params);
  }
}