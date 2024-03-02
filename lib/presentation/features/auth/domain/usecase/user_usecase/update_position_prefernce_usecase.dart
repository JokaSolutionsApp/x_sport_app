import 'package:dartz/dartz.dart';

import '../../../../../../core/error/failure.dart';
import '../../repository/base_user_repository.dart';

class UpdatePositionPrefernceUseCase {
  final BaseUserRepository repository;

  UpdatePositionPrefernceUseCase(this.repository);

  Future<Either<Failure, void>> call(int sportId, String optionName) async {
    return await repository.updatePositionPreference(sportId, optionName);
  }
}
