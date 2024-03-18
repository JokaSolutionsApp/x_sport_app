import 'package:dartz/dartz.dart';
import 'package:x_sport/app/features/auth/domain/enitites/sport_entity.dart';
import 'package:x_sport/core/error/failure.dart';

abstract class BaseAcademyRepository {
  Future<Either<Failure, List<SportEntity>>> getSportsMembership();
}
