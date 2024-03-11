import 'package:dartz/dartz.dart';
import 'package:x_sport/app/features/auth/data/datasource/params/auth_params.dart';
import 'package:x_sport/app/features/auth/domain/enitites/sport_entity.dart';
import 'package:x_sport/app/features/auth/domain/enitites/user_profile_entity.dart';
import 'package:x_sport/app/features/auth/domain/params/edit_preferences_params.dart';
import 'package:x_sport/core/error/failure.dart';

abstract class BaseUserRepository {
  Future<Either<Failure, UserProfileEntity>> login();
  Future<Either<Failure, bool>> register();
  Future<Either<Failure, UserProfileEntity>> editUserProfile(
      {required EditUserProfileParams params});

  Future<Either<Failure, UserProfileEntity>> getUserProfile();
  Future<Either<Failure, UserProfileEntity>> editPreferences(
      {required List<PreferenceValue> params});

  Future<Either<Failure, UserProfileEntity>> deleteFavoriteSports(
      {required List<int> sportsIds});
  Future<Either<Failure, UserProfileEntity>> addFavoriteSports(
      {required List<int> sportsIds});
  Future<Either<Failure, UserProfileEntity>> selectCurrentSport(
      {required int sportId});

  Future<Either<Failure, bool>> checkUserLogged();
  Future<Either<Failure, List<SportEntity>>> confirmUserEmail();
  Future<Either<Failure, void>> resendConfirmUserEmail();

  Future<Either<Failure, bool>> logoutUser();
  Future<Either<Failure, List<SportEntity>>> getSports();
  Future<Either<Failure, UserProfileEntity>> completeRegistration(
      List<int> imageBytes, String imageType, List<int> selectedSports);

  Future<Either<Failure, String>> sendMessage(String userMessage);
}
