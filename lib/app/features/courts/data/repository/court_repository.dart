import 'package:dartz/dartz.dart';
import 'package:x_sport/app/features/academy/data/datasource/academy_remote_datasource.dart';
import 'package:x_sport/app/features/courts/domain/enitites/about_stadium_entity.dart';
import 'package:x_sport/app/features/courts/domain/enitites/params/stadium_params.dart';
import 'package:x_sport/app/features/courts/domain/enitites/stadiums_entity.dart';
import 'package:x_sport/app/features/courts/domain/repository/base_stadium_repository.dart';
import 'package:x_sport/core/error/failure.dart';

class StadiumRepository extends BaseStadiumRepository {
  final BaseAcademyRemoteDataSource baseAcademyRemoteDataSource;

  StadiumRepository(this.baseAcademyRemoteDataSource);

  @override
  Future<Either<Failure, AboutStadiumEntity>> getAboutStadium(
      {required int stadiumId}) {
    // TODO: implement getAboutStadium
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<StadiumEntity>>> getFriendsStadiums(
      {required StadiumPrams params}) {
    // TODO: implement getFriendsStadiums
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<StadiumEntity>>> getNearByStadiums(
      {required StadiumPrams params}) {
    // TODO: implement getNearByStadiums
    throw UnimplementedError();
  }
}
