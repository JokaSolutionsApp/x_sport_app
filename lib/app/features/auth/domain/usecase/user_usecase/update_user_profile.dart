import 'package:dartz/dartz.dart';
import 'package:x_sport/app/features/auth/domain/enitites/user_entity.dart';

import '../../../../../../core/error/failure.dart';
import '../../repository/base_user_repository.dart';

class UpdateUserProfileUseCase {
  final BaseUserRepository repository;

  UpdateUserProfileUseCase(this.repository);

  Future<Either<Failure, UserEntity>> call(
      String userName,
      String phone,
      List<int> image,
      String type,
      double latitude,
      double longitude,
      List<int> selectedSports,
      String gender) async {
    return await repository.updateUserProfile(userName, phone, image, type,
        latitude, longitude, selectedSports, gender);
  }
}
