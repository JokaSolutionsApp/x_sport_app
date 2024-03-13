import 'package:dartz/dartz.dart';
import '../../data/dtos/sport_dto/sport_dto.dart';
import '../../data/dtos/user_dto/user_dto.dart';

import '../../../../../core/error/failure.dart';

abstract class BaseUserRepository {
  Future<Either<Failure, UserDto>> signIn();
  Future<Either<Failure, void>> register();
  Future<Either<Failure, UserDto>> getUserInfo();
  Future<Either<Failure, UserDto>> updateUserPreferences(
      int sportId, int favoriteHand, int favoritePos, int favoriteTime);
  Future<Either<Failure, UserDto>> updateUserProfile(
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
  Future<Either<Failure, List<SportDto>>> getSports();
  Future<Either<Failure, UserDto>> sendImageAndSports(
      List<int> imageBytes, String imageType, List<int> selectedSports);

  Future<Either<Failure, String>> sendMessage(String userMessage);
}
