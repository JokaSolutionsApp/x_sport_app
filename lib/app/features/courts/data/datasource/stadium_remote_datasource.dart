// ignore_for_file: prefer_typing_uninitialized_variables, unnecessary_brace_in_string_interps, null_argument_to_non_null_type

import 'dart:async';
import 'package:x_sport/app/features/courts/data/models/about_stadium_model.dart';
import 'package:x_sport/app/features/courts/data/models/stadium_model.dart';
import 'package:x_sport/app/features/courts/domain/enitites/about_stadium_entity.dart';
import 'package:x_sport/app/features/courts/domain/enitites/params/stadium_params.dart';
import 'package:x_sport/app/features/courts/domain/enitites/stadiums_entity.dart';
import 'package:x_sport/core/constance/api_constance.dart';
import 'package:x_sport/core/error/exceptions.dart';
import 'package:x_sport/core/network/error_message_model.dart';
import 'package:x_sport/core/services/api_service.dart';

abstract class BaseStadiumRemoteDataSource {
  Future<List<StadiumEntity>> getNearByStadiums({required StadiumPrams params});
  Future<List<StadiumEntity>> getFriendsStadiums(
      {required StadiumPrams params});

  Future<AboutStadiumEntity> getAboutStadium({required int stadiumId});
}

class StadiumRemoteDataSource extends BaseStadiumRemoteDataSource {
  @override
  Future<List<StadiumEntity>> getFriendsStadiums(
      {required StadiumPrams params}) async {
    final getParams = params.toMap();
    final response = await ApiService.get(ApiConstance.getFriendsStadiums,
        queryParams: getParams);
    final data = response.data;
    print('$data getFriendsStadiums');

    if (response.statusCode == 200) {
      return List<StadiumModel>.from(
          data['data'].map((e) => StadiumModel.fromJson(e)));
    } else {
      throw ServerException(errorModel: ErrorModel.formJson(data));
    }
  }

  @override
  Future<List<StadiumEntity>> getNearByStadiums(
      {required StadiumPrams params}) async {
    final getParams = params.toMap();
    final response = await ApiService.get(ApiConstance.getNearByStadiums,
        queryParams: getParams);
    final data = response.data;
    print('$data getNearByStadiums');

    if (response.statusCode == 200) {
      return List<StadiumModel>.from(
          data['data'].map((e) => StadiumModel.fromJson(e)));
    } else {
      throw ServerException(errorModel: ErrorModel.formJson(data));
    }
  }

  @override
  Future<AboutStadiumEntity> getAboutStadium({required int stadiumId}) async {
    final getParams = {'StadiumId': stadiumId};
    final response = await ApiService.get(ApiConstance.getAboutStadium,
        queryParams: getParams);
    final data = response.data;
    print('$data getAboutStadium');

    if (response.statusCode == 200) {
      return AboutStadiumModel.fromJson(data['data']);
    } else {
      throw ServerException(errorModel: ErrorModel.formJson(data));
    }
  }
}
