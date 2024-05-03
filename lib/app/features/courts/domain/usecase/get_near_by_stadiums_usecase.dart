import 'package:dartz/dartz.dart';
import '../enitites/params/stadium_params.dart';
import '../enitites/stadiums_entity.dart';

import '../../../../../core/error/failure.dart';
import '../repository/base_stadium_repository.dart';

class GetNearByStadiumsCase {
  final BaseStadiumRepository repository;

  GetNearByStadiumsCase(this.repository);

  Future<Either<Failure, List<StadiumEntity>>> call(
      {required StadiumPrams params}) async {
    return await repository.getNearByStadiums(params: params);
  }
}
