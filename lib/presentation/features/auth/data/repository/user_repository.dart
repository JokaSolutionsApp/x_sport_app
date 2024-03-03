import 'package:dartz/dartz.dart';
import 'package:x_sport/core/error/exceptions.dart';
import 'package:x_sport/core/error/failure.dart';
import 'package:x_sport/presentation/features/auth/data/dtos/sport_dto/sport_dto.dart';
import 'package:x_sport/presentation/features/auth/domain/enitites/welcome_enitty.dart';
import 'package:x_sport/presentation/features/auth/domain/repository/base_user_repository.dart';

import '../datasource/user_remote_datasource.dart';
import '../dtos/user_dto/user_dto.dart';

class UserRepository extends BaseUserRepository {
  final BaseUserRemoteDataSource baseUsersRemoteDataSource;

  UserRepository(this.baseUsersRemoteDataSource);

  @override
  Future<Either<Failure, UserDto>> signIn() async {
    try {
      final result = await baseUsersRemoteDataSource.signIn();

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(failuar.errorModel.statusCode));
    }
  }

  @override
  Future<Either<Failure, void>> register() async {
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
  Future<Either<Failure, bool>> validateAccount() async {
    try {
      final result = await baseUsersRemoteDataSource.validateAccount();

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
  Future<Either<Failure, List<SportDto>>> getSports() async {
    try {
      final result = await baseUsersRemoteDataSource.getSports();

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(failuar.errorModel.statusCode));
    }
  }

  @override
  Future<Either<Failure, UserDto>> sendImageAndSports(
      List<int> imageBytes, String imageType, List<int> selectedSports) async {
    try {
      final result = await baseUsersRemoteDataSource.sendImageAndSports(
          imageBytes, imageType, selectedSports);

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(failuar.errorModel.statusCode));
    }
  }

  @override
  Future<Either<Failure, UserDto>> getUserInfo() async {
    try {
      final result = await baseUsersRemoteDataSource.getUserInfo();

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(failuar.errorModel.statusCode));
    }
  }

  @override
  Future<Either<Failure, UserDto>> updateUserPreferences(
      int sportId, int favoriteHand, int favoritePos, int favoriteTime) async {
    try {
      final result = await baseUsersRemoteDataSource.updateUserPreferences(
          sportId, favoriteHand, favoritePos, favoriteTime);

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(failuar.errorModel.statusCode));
    }
  }

  @override
  Future<Either<Failure, UserDto>> updateUserProfile(
      String userName,
      String phone,
      List<int> image,
      String type,
      double latitude,
      double longitude,
      List<int> selectedSports,
      String gender) async {
    try {
      final result = await baseUsersRemoteDataSource.updateUserProfile(userName,
          phone, image, type, latitude, longitude, selectedSports, gender);

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(failuar.errorModel.statusCode));
    }
  }

  @override
  Future<Either<Failure, void>> updateHandPreference(
      int sportId, String optionName) async {
    try {
      final result = await baseUsersRemoteDataSource.updateHandPreference(
          sportId, optionName);

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(failuar.errorModel.statusCode));
    }
  }

  @override
  Future<Either<Failure, void>> updatePositionPreference(
      int sportId, String optionName) async {
    try {
      final result = await baseUsersRemoteDataSource.updatePositionPreference(
          sportId, optionName);

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(failuar.errorModel.statusCode));
    }
  }

  @override
  Future<Either<Failure, void>> updateTimePreference(
      int sportId, String optionName) async {
    try {
      final result = await baseUsersRemoteDataSource.updateTimePreference(
          sportId, optionName);

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
}
