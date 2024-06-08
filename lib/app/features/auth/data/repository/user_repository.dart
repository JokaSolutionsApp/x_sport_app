import 'package:dartz/dartz.dart';

import '../../../../../core/error/exceptions.dart';
import '../../../../../core/error/failure.dart';
import '../../../../../core/utils/enums.dart';
import '../../domain/enitites/sport_entity.dart';
import '../../domain/enitites/user_profile_entity.dart';
import '../../domain/params/edit_preferences_params.dart';
import '../../domain/repository/base_user_repository.dart';
import '../datasource/params/auth_params.dart';
import '../datasource/user_remote_datasource.dart';

class UserRepository extends BaseUserRepository {
  final BaseUserRemoteDataSource baseUsersRemoteDataSource;

  UserRepository(this.baseUsersRemoteDataSource);

  @override
  Future<Either<Failure, UserProfileEntity>> login() async {
    try {
      final result = await baseUsersRemoteDataSource.login();

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(
        failuar.errorModel.statusCode,
        failuar.errorModel.message,
      ));
    }
  }

  @override
  Future<Either<Failure, void>> googleLogin() async {
    try {
      final result = await baseUsersRemoteDataSource.googleLogin();

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(
        failuar.errorModel.statusCode,
        failuar.errorModel.message,
      ));
    }
  }

  @override
  Future<Either<Failure, UserProfileEntity>> register() async {
    try {
      final result = await baseUsersRemoteDataSource.register();

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(
        failuar.errorModel.statusCode,
        failuar.errorModel.message,
      ));
    }
  }

  @override
  Future<Either<Failure, UserAuthState>> checkAccountStatus() async {
    try {
      final result = await baseUsersRemoteDataSource.checkAccountStatus();

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(
        failuar.errorModel.statusCode,
        failuar.errorModel.message,
      ));
    }
  }

  @override
  Future<Either<Failure, List<SportEntity>>> confirmUserEmail() async {
    try {
      final result = await baseUsersRemoteDataSource.confirmUserEmail();

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(
        failuar.errorModel.statusCode,
        failuar.errorModel.message,
      ));
    }
  }

  @override
  Future<Either<Failure, void>> resendConfirmUserEmail() async {
    try {
      final result = await baseUsersRemoteDataSource.resendConfirmUserEmail();

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(
        failuar.errorModel.statusCode,
        failuar.errorModel.message,
      ));
    }
  }

  @override
  Future<Either<Failure, bool>> logoutUser() async {
    try {
      final result = await baseUsersRemoteDataSource.logoutUser();

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(
        failuar.errorModel.statusCode,
        failuar.errorModel.message,
      ));
    }
  }

  @override
  Future<Either<Failure, List<SportEntity>>> getSports() async {
    try {
      final result = await baseUsersRemoteDataSource.getSports();

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(
        failuar.errorModel.statusCode,
        failuar.errorModel.message,
      ));
    }
  }

  @override
  Future<Either<Failure, UserProfileEntity>> completeRegistration(
      List<int> imageBytes, String imageType) async {
    try {
      final result = await baseUsersRemoteDataSource.completeRegistration(
          imageBytes, imageType);

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(
        failuar.errorModel.statusCode,
        failuar.errorModel.message,
      ));
    }
  }

  @override
  Future<Either<Failure, UserProfileEntity>> getUserProfile() async {
    try {
      final result = await baseUsersRemoteDataSource.getUserProfile();

      return Right(result);
    } on ServerException catch (failuar) {
      print(failuar.errorModel);
      return Left(ServerFailure(
        failuar.errorModel.statusCode,
        failuar.errorModel.message,
      ));
    }
  }

  @override
  Future<Either<Failure, UserProfileEntity>> editPreferences(
      {required PreferenceValue params}) async {
    try {
      final result =
          await baseUsersRemoteDataSource.editPreferences(params: params);

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(
        failuar.errorModel.statusCode,
        failuar.errorModel.message,
      ));
    }
  }

  @override
  Future<Either<Failure, String>> sendMessage(String userMessage) async {
    try {
      final result = await baseUsersRemoteDataSource.sendMessage(userMessage);

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(
        failuar.errorModel.statusCode,
        failuar.errorModel.message,
      ));
    }
  }

  @override
  Future<Either<Failure, UserProfileEntity>> addFavoriteSports(
      {required List<int> sportsIds}) async {
    try {
      final result = await baseUsersRemoteDataSource.addFavoriteSports(
          sportsIds: sportsIds);

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(
        failuar.errorModel.statusCode,
        failuar.errorModel.message,
      ));
    }
  }

  @override
  Future<Either<Failure, UserProfileEntity>> deleteFavoriteSports(
      {required List<int> sportsIds}) async {
    try {
      final result = await baseUsersRemoteDataSource.deleteFavoriteSports(
          sportsIds: sportsIds);

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(
        failuar.errorModel.statusCode,
        failuar.errorModel.message,
      ));
    }
  }

  @override
  Future<Either<Failure, UserProfileEntity>> editUserProfile(
      {required EditUserProfileParams params}) async {
    try {
      final result =
          await baseUsersRemoteDataSource.editUserProfile(params: params);

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(
        failuar.errorModel.statusCode,
        failuar.errorModel.message,
      ));
    }
  }

  @override
  Future<Either<Failure, UserProfileEntity>> selectCurrentSport(
      {required int sportId}) async {
    try {
      final result =
          await baseUsersRemoteDataSource.selectCurrentSport(sportId: sportId);

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(
        failuar.errorModel.statusCode,
        failuar.errorModel.message,
      ));
    }
  }

  @override
  Future<Either<Failure, bool>> deleteUserProfile() async {
    try {
      final result = await baseUsersRemoteDataSource.deleteUserProfile();

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(
        failuar.errorModel.statusCode,
        failuar.errorModel.message,
      ));
    }
  }

  @override
  Future<Either<Failure, bool>> changeEmail() async {
    try {
      final result = await baseUsersRemoteDataSource.changeEmail();

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(
        failuar.errorModel.statusCode,
        failuar.errorModel.message,
      ));
    }
  }

  @override
  Future<Either<Failure, bool>> changePassword() async {
    try {
      final result = await baseUsersRemoteDataSource.changePassword();

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(
        failuar.errorModel.statusCode,
        failuar.errorModel.message,
      ));
    }
  }

  @override
  Future<Either<Failure, bool>> skipProfilePicture() async {
    try {
      final result = await baseUsersRemoteDataSource.skipProfilePicture();

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(
        failuar.errorModel.statusCode,
        failuar.errorModel.message,
      ));
    }
  }

  @override
  Future<Either<Failure, UserProfileEntity>> completeYourProfile(
      String name, String phone) async {
    try {
      final result =
          await baseUsersRemoteDataSource.completeYourProfile(name, phone);

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(
        failuar.errorModel.statusCode,
        failuar.errorModel.message,
      ));
    }
  }
}
