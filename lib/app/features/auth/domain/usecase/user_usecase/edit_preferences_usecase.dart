import 'package:dartz/dartz.dart';

import '../../../../../../core/error/failure.dart';
import '../../enitites/user_profile_entity.dart';
import '../../params/edit_preferences_params.dart';
import '../../repository/base_user_repository.dart';

class EditPreferencesUseCase {
  final BaseUserRepository repository;

  EditPreferencesUseCase(this.repository);

  Future<Either<Failure, UserProfileEntity>> call(
      {required PreferenceValue params}) async {
    return await repository.editPreferences(params: params);
  }
}
