import 'package:dartz/dartz.dart';
import '../enitites/about_stadium_entity.dart';
import '../enitites/params/stadium_params.dart';
import '../enitites/stadiums_entity.dart';
import '../../../../../core/error/failure.dart';

abstract class BaseStadiumRepository {
  Future<Either<Failure, List<StadiumEntity>>> getNearByStadiums(
      {required StadiumPrams params});
  Future<Either<Failure, List<StadiumEntity>>> getFriendsStadiums(
      {required StadiumPrams params});
  Future<Either<Failure, AboutStadiumEntity>> getAboutStadium(
      {required int stadiumId});
}
