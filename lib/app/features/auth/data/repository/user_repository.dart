import 'package:dartz/dartz.dart';

import '../../../../../core/error/exceptions.dart';
import '../../../../../core/error/failure.dart';
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
      return Left(ServerFailure(failuar.errorModel.statusCode));
    }
  }

  @override
  Future<Either<Failure, bool>> register() async {
    try {
      final result = await baseUsersRemoteDataSource.register();

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(failuar.errorModel.statusCode));
    }
  }

  @override
  Future<Either<Failure, bool>> checkUserLogged() async {
    try {
      final result = await baseUsersRemoteDataSource.checkUserLogged();

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(failuar.errorModel.statusCode));
    }
  }

  @override
  Future<Either<Failure, List<SportEntity>>> confirmUserEmail() async {
    try {
      final result = await baseUsersRemoteDataSource.confirmUserEmail();

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(failuar.errorModel.statusCode));
    }
  }

  @override
  Future<Either<Failure, void>> resendConfirmUserEmail() async {
    try {
      final result = await baseUsersRemoteDataSource.resendConfirmUserEmail();

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(failuar.errorModel.statusCode));
    }
  }

  @override
  Future<Either<Failure, bool>> logoutUser() async {
    try {
      final result = await baseUsersRemoteDataSource.logoutUser();

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(failuar.errorModel.statusCode));
    }
  }

  @override
  Future<Either<Failure, List<SportEntity>>> getSports() async {
    try {
      final result = await baseUsersRemoteDataSource.getSports();

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(failuar.errorModel.statusCode));
    }
  }

  @override
  Future<Either<Failure, UserProfileEntity>> completeRegistration(
      List<int> imageBytes, String imageType, List<int> selectedSports) async {
    try {
      final result = await baseUsersRemoteDataSource.completeRegistration(
          imageBytes, imageType, selectedSports);

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(failuar.errorModel.statusCode));
    }
  }

  @override
  Future<Either<Failure, UserProfileEntity>> getUserProfile() async {
    try {
      final result = await baseUsersRemoteDataSource.getUserProfile();

      return Right(result);
    } on ServerException catch (failuar) {
      print(failuar.errorModel);
      return Left(ServerFailure(failuar.errorModel.statusCode));
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
      return Left(ServerFailure(failuar.errorModel.statusCode));
    }
  }

  @override
  Future<Either<Failure, String>> sendMessage(String userMessage) async {
    try {
      final result = await baseUsersRemoteDataSource.sendMessage(userMessage);

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(failuar.errorModel.statusCode));
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
      return Left(ServerFailure(failuar.errorModel.statusCode));
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
      return Left(ServerFailure(failuar.errorModel.statusCode));
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
      return Left(ServerFailure(failuar.errorModel.statusCode));
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
      return Left(ServerFailure(failuar.errorModel.statusCode));
    }
  }

  @override
  Future<Either<Failure, bool>> deleteUserProfile() async {
    try {
      final result = await baseUsersRemoteDataSource.deleteUserProfile();

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(failuar.errorModel.statusCode));
    }
  }
}
