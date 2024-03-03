import 'package:dartz/dartz.dart';
import 'package:x_sport/core/error/failure.dart';
import 'package:x_sport/app/features/auth/domain/repository/base_user_repository.dart';

class SendMessageUseCase {
  final BaseUserRepository repository;

  SendMessageUseCase(this.repository);

  Future<Either<Failure, String>> call(String userMessage) async {
    return await repository.sendMessage(userMessage);
  }
}
