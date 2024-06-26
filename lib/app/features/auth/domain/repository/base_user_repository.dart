import 'package:dartz/dartz.dart';
import '../../../../../core/utils/enums.dart';
import '../../../../../core/error/failure.dart';
import '../../data/datasource/params/auth_params.dart';
import '../enitites/sport_entity.dart';
import '../enitites/user_profile_entity.dart';
import '../params/edit_preferences_params.dart';

abstract class BaseUserRepository {
  Future<Either<Failure, UserProfileEntity>> login();
  Future<Either<Failure, UserProfileEntity>> googleLogin();

  Future<Either<Failure, bool>> register();
  Future<Either<Failure, bool>> changeEmail();
  Future<Either<Failure, bool>> changePassword();
  Future<Either<Failure, UserProfileEntity>> editUserProfile(
      {required EditUserProfileParams params});

  Future<Either<Failure, bool>> deleteUserProfile();

  Future<Either<Failure, UserProfileEntity>> getUserProfile();
  Future<Either<Failure, UserProfileEntity>> editPreferences(
      {required PreferenceValue params});

  Future<Either<Failure, UserProfileEntity>> deleteFavoriteSports(
      {required List<int> sportsIds});
  Future<Either<Failure, UserProfileEntity>> addFavoriteSports(
      {required List<int> sportsIds});
  Future<Either<Failure, UserProfileEntity>> selectCurrentSport(
      {required int sportId});

  Future<Either<Failure, UserAuthState>> checkAccountStatus();
  Future<Either<Failure, List<SportEntity>>> confirmUserEmail();
  Future<Either<Failure, void>> resendConfirmUserEmail();

  Future<Either<Failure, bool>> logoutUser();
  Future<Either<Failure, List<SportEntity>>> getSports();
  Future<Either<Failure, UserProfileEntity>> completeRegistration(
      List<int> imageBytes, String imageType, List<int> selectedSports);

  Future<Either<Failure, String>> sendMessage(String userMessage);
}
