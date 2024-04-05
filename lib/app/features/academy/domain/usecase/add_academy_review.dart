import 'package:dartz/dartz.dart';
import '../enitites/params/acedemy_params.dart';
import '../../../../../core/error/failure.dart';
import '../repository/base_academy_repository.dart';

class AddAcademyReviewUseCase {
  final BaseAcademyRepository repository;

  AddAcademyReviewUseCase(this.repository);

  Future<Either<Failure, bool>> call(
      {required AddAcademyReviewParams params}) async {
    return await repository.addAcademyReview(params: params);
  }
}
