import 'package:dartz/dartz.dart';
import 'package:x_sport/app/features/archives/domain/enitites/academy_subscription_archive_entity.dart';
import '../../../../../core/error/failure.dart';
import '../repository/base_archive_repository.dart';

class GetAcademySupscriptionArchiveUseCase {
  final BaseArchiveRepository repository;

  GetAcademySupscriptionArchiveUseCase(this.repository);

  Future<Either<Failure, List<AcademySubscriptionArchive>>> call() async {
    return await repository.getAcademySupscriptionArchive();
  }
}
