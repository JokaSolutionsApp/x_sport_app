import 'package:dartz/dartz.dart';
import '../../../../../../core/error/failure.dart';
import '../../repository/base_user_repository.dart';

class SendMessageUseCase {
  final BaseUserRepository repository;

  SendMessageUseCase(this.repository);

  Future<Either<Failure, String>> call(String userMessage) async {
    return await repository.sendMessage(userMessage);
  }
}
