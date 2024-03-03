import 'package:dartz/dartz.dart';

import '../../../../../../core/error/failure.dart';
import '../../repository/base_user_repository.dart';

class SignUpUseCase {
  final BaseUserRepository repository;

  SignUpUseCase(this.repository);

  Future<Either<Failure, void>> call() async {
    return await repository.register();
  }
}
