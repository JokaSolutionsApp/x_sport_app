// ignore_for_file: prefer_typing_uninitialized_variables, unnecessary_brace_in_string_interps, null_argument_to_non_null_type

import 'dart:async';
import 'package:x_sport/app/features/academy/data/models/about_academy_model.dart';
import 'package:x_sport/app/features/academy/data/models/academy_membership_model.dart';
import 'package:x_sport/app/features/academy/data/models/academy_model.dart';
import 'package:x_sport/app/features/academy/data/models/academy_review_model.dart';
import 'package:x_sport/app/features/academy/data/models/get_courses_to_subscribe_model.dart';
import 'package:x_sport/app/features/academy/domain/enitites/about_academy_entity.dart';
import 'package:x_sport/app/features/academy/domain/enitites/academy_entity.dart';
import 'package:x_sport/app/features/academy/domain/enitites/academy_membership_entity.dart';
import 'package:x_sport/app/features/academy/domain/enitites/academy_review_entity.dart';
import 'package:x_sport/app/features/academy/domain/enitites/get_courses_to_subscribe_entity.dart';
import 'package:x_sport/app/features/academy/domain/enitites/params/acedemy_params.dart';
import 'package:x_sport/core/constance/api_constance.dart';
import 'package:x_sport/core/error/exceptions.dart';
import 'package:x_sport/core/network/error_message_model.dart';
import 'package:x_sport/core/services/api_service.dart';

abstract class BaseAcademyRemoteDataSource {
  Future<List<AcademyMembershipEntity>> getSportsMembership();
  Future<AcademyEntity> getSuggestedAcademies(
      {required SuggestedAcademyParams params});
  Future<AcademyEntity> getAllAcademies({required AllAcademiesParams params});

  Future<AboutAcademyEntity> getAboutAcademy({required int academyId});
  Future<List<GetCoursesToSubscribeEntity>> getCoursesToSubscribe(
      {required CourseParams params});
  Future<GetCoursesToSubscribeEntity> getCoursesToSubscribeInDate(
      {required int academyId, required String targetDate});
  Future<List<AcademyReviewEntity>> getAcademyReview({required int academyId});
  Future<bool> inrollUserInCourse({required InrollUserInCourseParams params});
  Future<bool> addAcademyReview({required AddAcademyReviewParams params});
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
  Future<AcademyEntity> getSuggestedAcademies(
      {required SuggestedAcademyParams params}) async {
    final getParams = params.toMap();
    final response = await ApiService.get(ApiConstance.getSuggestedAcademies,
        queryParams: getParams);
    final data = response.data;
    print('$data getSuggestedAcademies');

    if (response.statusCode == 200) {
      return AcademyModel.fromJson(data['data']);
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
  Future<List<GetCoursesToSubscribeEntity>> getCoursesToSubscribe(
      {required CourseParams params}) async {
    final queryParams = params.toMap();

    final response = await ApiService.get(ApiConstance.getCoursesToSubscribe,
        queryParams: queryParams);
    final data = response.data;
    print('$data getCoursesToSubscribe');

    if (response.statusCode == 200) {
      return List<GetCoursesToSubscribeModel>.from(
          data['data'].map((e) => GetCoursesToSubscribeModel.fromJson(e)));
    } else {
      throw ServerException(errorModel: ErrorModel.formJson(data));
    }
  }

  @override
  Future<GetCoursesToSubscribeEntity> getCoursesToSubscribeInDate(
      {required int academyId, required String targetDate}) async {
    final getParams = {'academyId': academyId, 'targetDate': targetDate};
    final response = await ApiService.get(
        ApiConstance.getCoursesToSubscribeinDate,
        queryParams: getParams);
    final data = response.data;
    print('$data getCoursesToSubscribeinDate');

    if (response.statusCode == 200) {
      return GetCoursesToSubscribeModel.fromJson(data['data']);
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

  @override
  Future<AcademyEntity> getAllAcademies(
      {required AllAcademiesParams params}) async {
    final getParams = params.toMap();
    final response = await ApiService.get(ApiConstance.getAllAcademies,
        queryParams: getParams);
    final data = response.data;
    print('$data getAllAcademies');

    if (response.statusCode == 200) {
      return AcademyModel.fromJson(data['data']);
    } else {
      throw ServerException(errorModel: ErrorModel.formJson(data));
    }
  }

  @override
  Future<bool> inrollUserInCourse(
      {required InrollUserInCourseParams params}) async {
    final queryParams = params.toMap();
    final response = await ApiService.post(
      ApiConstance.inrollUserInCourse,
      queryParams,
    );
    final data = response.data;
    print('$data inrollUserInCourse');

    if (response.statusCode == 200) {
      return true;
    } else {
      throw ServerException(errorModel: ErrorModel.formJson(data));
    }
  }

  @override
  Future<bool> addAcademyReview(
      {required AddAcademyReviewParams params}) async {
    final queryParams = params.toMap();
    final response = await ApiService.post(
      ApiConstance.addAcademyReivew,
      queryParams,
    );
    final data = response.data;
    print('$data addAcademyReivew');

    if (response.statusCode == 200) {
      return true;
    } else {
      throw ServerException(errorModel: ErrorModel.formJson(data));
    }
  }
}
