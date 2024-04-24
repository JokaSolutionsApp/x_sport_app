import 'package:dartz/dartz.dart';
import 'package:x_sport/app/features/archives/domain/enitites/academy_subscription_archive_entity.dart';
import '../../../../../core/error/failure.dart';

abstract class BaseArchiveRepository {
  Future<Either<Failure, List<AcademySubscriptionArchive>>>
      getAcademySupscriptionArchive();
}
