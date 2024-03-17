import 'package:dartz/dartz.dart';
import 'package:x_sport/app/features/auth/domain/enitites/sport_entity.dart';

import '../../../../../../core/error/failure.dart';
import '../../repository/base_user_repository.dart';

class ConfirmUserEmailUseCase {
  final BaseUserRepository repository;

  ConfirmUserEmailUseCase(this.repository);

  Future<Either<Failure, List<SportEntity>>> call() async {
    return await repository.confirmUserEmail();
  }
}
