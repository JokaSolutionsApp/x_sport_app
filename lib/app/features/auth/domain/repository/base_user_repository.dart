import 'package:dartz/dartz.dart';
import 'package:x_sport/app/features/auth/domain/enitites/sport_entity.dart';
import 'package:x_sport/app/features/auth/domain/enitites/user_entity.dart';

import '../../../../../core/error/failure.dart';

abstract class BaseUserRepository {
  Future<Either<Failure, UserEntity>> signIn();
  Future<Either<Failure, void>> register();
  Future<Either<Failure, UserEntity>> getUserInfo();
  Future<Either<Failure, UserEntity>> updateUserPreferences(
      int sportId, int favoriteHand, int favoritePos, int favoriteTime);
  Future<Either<Failure, UserEntity>> updateUserProfile(
    String userName,
    String phone,
    List<int> image,
    String type,
    double latitude,
    double longitude,
    List<int> selectedSports,
    String gender,
  );
  Future<Either<Failure, void>> updateHandPreference(
      int sportId, String optionName);
  Future<Either<Failure, void>> updatePositionPreference(
      int sportId, String optionName);
  Future<Either<Failure, void>> updateTimePreference(
      int sportId, String optionName);

  Future<Either<Failure, bool>> checkUserLogged();
  Future<Either<Failure, bool>> validateAccount();
  Future<Either<Failure, bool>> logoutUser();
  Future<Either<Failure, List<SportEntity>>> getSports();
  Future<Either<Failure, UserEntity>> sendImageAndSports(
      List<int> imageBytes, String imageType, List<int> selectedSports);

  Future<Either<Failure, String>> sendMessage(String userMessage);
}
