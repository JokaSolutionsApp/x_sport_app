import 'package:dartz/dartz.dart';

import '../../../../../../core/error/failure.dart';
import '../../repository/base_user_repository.dart';

class UpdateTimePrefernceUseCase {
  final BaseUserRepository repository;

  UpdateTimePrefernceUseCase(this.repository);

  Future<Either<Failure, void>> call(int sportId, String optionName) async {
    return await repository.updateTimePreference(sportId, optionName);
  }
}
