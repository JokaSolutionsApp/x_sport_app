import 'package:dartz/dartz.dart';
import '../../../../../../core/utils/enums.dart';

import '../../../../../../core/error/failure.dart';
import '../../repository/base_user_repository.dart';

class AccountStatusUseCase {
  final BaseUserRepository repository;

  AccountStatusUseCase(this.repository);

  Future<Either<Failure, UserAuthState>> call() async {
    return await repository.checkAccountStatus();
  }
}
