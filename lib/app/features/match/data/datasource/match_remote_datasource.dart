import 'dart:async';
import 'dart:convert';

import '../../../academy/domain/enitites/params/acedemy_params.dart';
import '../models/reservation_model.dart';
import '../models/sport_model.dart';
import '../models/sport_stadium_model.dart';
import '../../domain/enitites/reservation_entity.dart';
import '../../domain/enitites/sport_entity.dart';
import '../../domain/enitites/sport_stadium_entity.dart';
import '../../../../../core/constance/api_constance.dart';
import '../../../../../core/error/exceptions.dart';
import '../../../../../core/network/error_message_model.dart';
import '../../../../../core/services/api_service.dart';
import '../../../../../core/services/locator/service_locator.dart';
import '../../../../../core/services/secure_storage_service.dart.dart';

abstract class BaseMatchRemoteDataSource {
  Future<List<SportEntity>> getSports();
  Future<List<ReservationEntity>> getReservedTimes();
  Future<List<SportStadiumEntity>> getsportStadiums(
      {required StadiumParams params});
  Future<bool> createReservation();
}

class MatchRemoteDataSource extends BaseMatchRemoteDataSource {
  final token = sl<SecureStorageService>().read('token');

  @override
  Future<List<SportEntity>> getSports() async {
    final response = await ApiService.get(ApiConstance.getSportsApi);
    if (response.statusCode == 200 && response.data['data'] != null) {
      List<dynamic> sportsJson = response.data['data'];
      List<SportEntity> sports = sportsJson
          .map<SportEntity>((json) => SportModel.fromJson(json))
          .toList();

      // Optionally cache the sports data as you've shown
      await sl<SecureStorageService>().write('sports', jsonEncode(sportsJson));

      return sports;
    } else {
      // Handle non-200 responses or missing data
      throw ServerException(errorModel: ErrorModel.formJson(response.data));
    }
  }

  @override
  Future<bool> createReservation() async {
    final postData = {
      "reservationDate": "2024-04-25",
      "reservatonTimeFrom": "09:00:00",
      "reservatonTimeTo": "11:00:00",
      "stadiumFloorId": "1"
    };
    final response = await ApiService.post(ApiConstance.reserve, postData);
    if (response.statusCode == 200) {
      return true;
    } else {
      throw ServerException(errorModel: ErrorModel.formJson(response.data));
    }
  }

  @override
  Future<List<ReservationEntity>> getReservedTimes() async {
    final response = await ApiService.get(ApiConstance.getReservedTimes);
    if (response.statusCode == 200) {
      List<dynamic> sportsJson = response.data['data'];
      List<ReservationEntity> reservations = sportsJson
          .map<ReservationEntity>((json) => ReservationModel.fromJson(json))
          .toList();
      return reservations;
    } else {
      throw ServerException(errorModel: ErrorModel.formJson(response.data));
    }
  }

  @override
  Future<List<SportStadiumEntity>> getsportStadiums(
      {required StadiumParams params}) async {
    final response = await ApiService.get(ApiConstance.getSportStadiums,
        queryParams: params.toMap());
    if (response.statusCode == 200) {
      List<dynamic> sportsJson = response.data['data'];
      List<SportStadiumEntity> stadiums = sportsJson
          .map<SportStadiumEntity>((json) => SportStadiumModel.fromJson(json))
          .toList();
      return stadiums;
    } else {
      throw ServerException(errorModel: ErrorModel.formJson(response.data));
    }
  }
}
