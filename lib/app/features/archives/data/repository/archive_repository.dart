import 'package:dartz/dartz.dart';
import 'package:x_sport/app/features/archives/domain/enitites/academy_subscription_archive_entity.dart';
import 'package:x_sport/app/features/archives/domain/repository/base_archive_repository.dart';
import '../../../../../core/error/exceptions.dart';
import '../../../../../core/error/failure.dart';
import '../datasource/academy_remote_datasource.dart';

class ArchiveRepository extends BaseArchiveRepository {
  final BaseArchiveRemoteDataSource baseArchiveRemoteDataSource;

  ArchiveRepository(this.baseArchiveRemoteDataSource);

  @override
  Future<Either<Failure, List<AcademySubscriptionArchive>>>
      getAcademySupscriptionArchive() async {
    try {
      final result =
          await baseArchiveRemoteDataSource.getAcademySupscriptionArchive();

      return Right(result);
    } on ServerException catch (failuar) {
      return Left(ServerFailure(
        failuar.errorModel.statusCode,
        failuar.errorModel.message,
      ));
    }
  }
}
