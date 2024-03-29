import 'package:dartz/dartz.dart';
import '../enitites/academy_review_entity.dart';
import '../../../auth/domain/enitites/sport_entity.dart';

import '../../../../../core/error/failure.dart';
import '../repository/base_academy_repository.dart';

class GetAcademyReviewUseCase {
  final BaseAcademyRepository repository;

  GetAcademyReviewUseCase(this.repository);

  Future<Either<Failure, List<AcademyReviewEntity>>> call(
      {required int academyId}) async {
    return await repository.getAcademyReview(academyId: academyId);
  }
}
