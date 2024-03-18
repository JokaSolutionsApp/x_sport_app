import 'package:dartz/dartz.dart';
import 'package:x_sport/app/features/academy/domain/repository/base_academy_repository.dart';
import 'package:x_sport/app/features/auth/data/datasource/params/auth_params.dart';
import 'package:x_sport/app/features/auth/domain/enitites/sport_entity.dart';
import 'package:x_sport/app/features/auth/domain/enitites/user_profile_entity.dart';
import 'package:x_sport/app/features/auth/domain/params/edit_preferences_params.dart';
import 'package:x_sport/core/error/exceptions.dart';
import 'package:x_sport/core/error/failure.dart';
import '../datasource/user_remote_datasource.dart';

class AcademyRepository extends BaseAcademyRepository {
  final BaseAcademyRemoteDataSource baseAcademyRemoteDataSource;

  AcademyRepository(this.baseAcademyRemoteDataSource);

  @override
  Future<Either<Failure, List<SportEntity>>> getSportsMembership() async {
    try {
      final result = await baseAcademyRemoteDataSource.getSportsMembership();

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(failuar.errorModel.statusCode));
    }
  }
}
