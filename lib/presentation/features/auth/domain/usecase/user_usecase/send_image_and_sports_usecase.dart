import 'package:dartz/dartz.dart';
import 'package:x_sport/presentation/features/auth/data/dtos/user_dto/user_dto.dart';

import '../../../../../../core/error/failure.dart';
import '../../repository/base_user_repository.dart';

class SendImageAndSportsUseCase {
  final BaseUserRepository repository;

  SendImageAndSportsUseCase(this.repository);

  Future<Either<Failure, UserDto>> call(
      List<int> imageBytes, String imageType, List<int> selectedSports) async {
    return await repository.sendImageAndSports(
        imageBytes, imageType, selectedSports);
  }
}