// ignore_for_file: prefer_typing_uninitialized_variables, unnecessary_brace_in_string_interps, null_argument_to_non_null_type

import 'dart:async';
import 'package:x_sport/app/features/auth/data/models/sport_model.dart';
import 'package:x_sport/app/features/auth/domain/enitites/sport_entity.dart';
import 'package:x_sport/core/constance/api_constance.dart';
import 'package:x_sport/core/error/exceptions.dart';
import 'package:x_sport/core/network/error_message_model.dart';
import 'package:x_sport/core/services/api_service.dart';

abstract class BaseAcademyRemoteDataSource {
  Future<List<SportEntity>> getSportsMembership();
  Future<List<SportEntity>> getSuggestedAcademies();
  Future<List<SportEntity>> getAboutAcademy();
  Future<List<SportEntity>> getAcademyCourses();
  Future<List<SportEntity>> getAcademyCoursesInDate();
  Future<List<SportEntity>> getAcademyReview();
}

class AcademyRemoteDataSource extends BaseAcademyRemoteDataSource {
  @override
  Future<List<SportEntity>> getSportsMembership() async {
    final response = await ApiService.get(ApiConstance.getSportsApi);
    final data = response.data;
    print('$data getSportsMembership');

    if (response.statusCode == 200) {
      return data['data']
          .map<SportEntity>((e) => SportModel.fromJson(e))
          .toList();
    } else {
      throw ServerException(errorModel: ErrorModel.formJson(data));
    }
  }

  @override
  Future<List<SportEntity>> getSuggestedAcademies() {
    // TODO: implement getSuggestedAcademies
    throw UnimplementedError();
  }

  @override
  Future<List<SportEntity>> getAboutAcademy() {
    // TODO: implement getAboutAcademy
    throw UnimplementedError();
  }

  @override
  Future<List<SportEntity>> getAcademyCourses() {
    // TODO: implement getAcademyCourses
    throw UnimplementedError();
  }

  @override
  Future<List<SportEntity>> getAcademyCoursesInDate() {
    // TODO: implement getAcademyCoursesInDate
    throw UnimplementedError();
  }

  @override
  Future<List<SportEntity>> getAcademyReview() {
    // TODO: implement getAcademyReview
    throw UnimplementedError();
  }
}
