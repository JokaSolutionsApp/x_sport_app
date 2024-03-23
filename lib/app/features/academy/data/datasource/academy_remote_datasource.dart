// ignore_for_file: prefer_typing_uninitialized_variables, unnecessary_brace_in_string_interps, null_argument_to_non_null_type

import 'dart:async';
import 'package:x_sport/app/features/academy/data/models/about_academy_model.dart';
import 'package:x_sport/app/features/academy/data/models/academy_membership_model.dart';
import 'package:x_sport/app/features/academy/data/models/academy_review_model.dart';
import 'package:x_sport/app/features/academy/data/models/get_academy_courses_model.dart';
import 'package:x_sport/app/features/academy/data/models/suggested_academy_model.dart';
import 'package:x_sport/app/features/academy/domain/enitites/about_academy_entity.dart';
import 'package:x_sport/app/features/academy/domain/enitites/academy_membership_entity.dart';
import 'package:x_sport/app/features/academy/domain/enitites/academy_review_entity.dart';
import 'package:x_sport/app/features/academy/domain/enitites/get_academy_courses_entity.dart';
import 'package:x_sport/app/features/academy/domain/enitites/params/acedemy_params.dart';
import 'package:x_sport/app/features/academy/domain/enitites/suggested_academy_entity.dart';
import 'package:x_sport/core/constance/api_constance.dart';
import 'package:x_sport/core/error/exceptions.dart';
import 'package:x_sport/core/network/error_message_model.dart';
import 'package:x_sport/core/services/api_service.dart';

abstract class BaseAcademyRemoteDataSource {
  Future<List<AcademyMembershipEntity>> getSportsMembership();
  Future<List<SuggestedAcademyEntity>> getSuggestedAcademies(
      {required SuggestedAcademyParams params});
  Future<AboutAcademyEntity> getAboutAcademy({required int academyId});
  Future<GetAcademyCoursesEntity> getAcademyCourses({required int academyId});
  Future<GetAcademyCoursesEntity> getAcademyCoursesInDate(
      {required int academyId, required String targetDate});
  Future<List<AcademyReviewEntity>> getAcademyReview({required int academyId});
}

class AcademyRemoteDataSource extends BaseAcademyRemoteDataSource {
  @override
  Future<List<AcademyMembershipEntity>> getSportsMembership() async {
    final response = await ApiService.get(ApiConstance.getSportsMemberShip);
    final data = response.data;
    print('$data getSportsMembership');

    if (response.statusCode == 200) {
      return List<AcademyMembershipModel>.from(
          data['data'].map((e) => AcademyMembershipModel.fromJson(e)));
    } else {
      throw ServerException(errorModel: ErrorModel.formJson(data));
    }
  }

  @override
  Future<List<SuggestedAcademyEntity>> getSuggestedAcademies(
      {required SuggestedAcademyParams params}) async {
    final getParams = params.toMap();
    final response = await ApiService.get(ApiConstance.getSuggestedAcademies,
        queryParams: getParams);
    final data = response.data;
    print('$data getSuggestedAcademies');

    if (response.statusCode == 200) {
      return List<SuggestedAcademyModel>.from(
          data['data'].map((e) => SuggestedAcademyModel.fromJson(e)));
    } else {
      throw ServerException(errorModel: ErrorModel.formJson(data));
    }
  }

  @override
  Future<AboutAcademyEntity> getAboutAcademy({required int academyId}) async {
    final getParams = {'academyId': academyId};
    final response = await ApiService.get(ApiConstance.aboutAcademyAcademies,
        queryParams: getParams);
    final data = response.data;
    print('$data getAboutAcademy');

    if (response.statusCode == 200) {
      return AboutAcademyModel.fromJson(data['data']);
    } else {
      throw ServerException(errorModel: ErrorModel.formJson(data));
    }
  }

  @override
  Future<GetAcademyCoursesEntity> getAcademyCourses(
      {required int academyId}) async {
    final getParams = {'academyId': academyId};
    final response = await ApiService.get(ApiConstance.getAcademyCourses,
        queryParams: getParams);
    final data = response.data;
    print('$data getAcademyCourses');

    if (response.statusCode == 200) {
      return GetAcademyCoursesModel.fromJson(data['data']);
    } else {
      throw ServerException(errorModel: ErrorModel.formJson(data));
    }
  }

  @override
  Future<GetAcademyCoursesEntity> getAcademyCoursesInDate(
      {required int academyId, required String targetDate}) async {
    final getParams = {'academyId': academyId, 'targetDate': targetDate};
    final response = await ApiService.get(ApiConstance.getAcademyCoursesinDate,
        queryParams: getParams);
    final data = response.data;
    print('$data getAcademyCoursesinDate');

    if (response.statusCode == 200) {
      return GetAcademyCoursesModel.fromJson(data['data']);
    } else {
      throw ServerException(errorModel: ErrorModel.formJson(data));
    }
  }

  @override
  Future<List<AcademyReviewEntity>> getAcademyReview(
      {required int academyId}) async {
    final getParams = {'academyId': academyId};
    final response = await ApiService.get(ApiConstance.getAcademyReviews,
        queryParams: getParams);
    final data = response.data;
    print('$data getAcademyReview');

    if (response.statusCode == 200) {
      return List<AcademyReviewModel>.from(
          data['data']['reviews'].map((e) => AcademyReviewModel.fromJson(e)));
    } else {
      throw ServerException(errorModel: ErrorModel.formJson(data));
    }
  }
}
