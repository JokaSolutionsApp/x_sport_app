// ignore_for_file: prefer_typing_uninitialized_variables, unnecessary_brace_in_string_interps, null_argument_to_non_null_type

import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:x_sport/core/constance/api_constance.dart';
import 'package:x_sport/core/error/exceptions.dart';
import 'package:x_sport/core/network/error_message_model.dart';
import 'package:x_sport/core/services/api_service.dart';
import 'package:x_sport/core/services/locator/service_locator.dart';
import 'package:x_sport/core/services/secure_storage_service.dart.dart';
import 'package:x_sport/presentation/controllers/fileds_bloc.dart';
import 'package:x_sport/presentation/features/auth/data/dtos/sport_dto/sport_dto.dart';
import 'package:x_sport/presentation/features/auth/data/dtos/user_dto/user_dto.dart';

abstract class BaseUserRemoteDataSource {
  Future<UserDto> signIn();

  Future<void> register();
  Future<UserDto> getUserInfo();
  Future<UserDto> updateUserPreferences(
      int sportId, int favoriteHand, int favoritePos, int favoriteTime);

  Future<UserDto> updateUserProfile(
    String userName,
    String phone,
    List<int> image,
    String type,
    double latitude,
    double longitude,
    List<int> selectedSports,
    String gender,
  );
  Future<void> updateHandPreference(int sportId, String optionName);
  Future<void> updatePositionPreference(int sportId, String optionName);
  Future<void> updateTimePreference(int sportId, String optionName);
  Future<bool> checkUserLogged();
  Future<bool> validateAccount();
  Future<bool> logoutUser();
  Future<List<SportDto>> getSports();
  Future<UserDto> sendImageAndSports(
      List<int> imageBytes, String imageType, List<int> selectedSports);

  Future<String> sendMessage(String userMessage);
}

class UserRemoteDataSource extends BaseUserRemoteDataSource {
  final dio = Dio();
  final token = sl<SecureStorageService>().read('token');

  @override
  Future<UserDto> signIn() async {
    final postData = {
      'email_or_phone': signInStream.emailPhoneValue,
      'password': signInStream.passwordValue,
    };
    print('signinpostData ${postData}');
    try {
      final response = await ApiService.post(ApiConstance.signInApi, postData);
      print('signin ${response.data}');
      print("response.statusCode ${response.statusCode}");

      final data = response.data;

      final stringData = json.encode(data);
      if (response.statusCode == 200) {
        final token = data['token'];
        await sl<SecureStorageService>().write('token', token);

        return userDtoFromJson(stringData);
      } else {
        throw ServerException(errorModel: ErrorModel.formJson(data));
      }
    } catch (e) {
      print('error ${e.runtimeType}');
      throw ServerException(errorModel: ErrorModel.formJson({}));
    }
  }

  @override
  Future<bool> checkUserLogged() async {
    final isLogged = await sl<SecureStorageService>().containsKey('token');
    print("isLogged $isLogged");
    if (isLogged) {
      return true;
    } else {
      throw ServerException(errorModel: ErrorModel.formJson({'status': 401}));
    }
  }

  @override
  Future<void> register() async {
    final postData = {
      'name': registerStream.nameValue,
      'email': registerStream.emailValue,
      'password': registerStream.passwordValue,
      'phone': registerStream.phoneValue,
      "gender": registerStream.genderValue,
      'longitude': registerStream.longeValue,
      'latitude': registerStream.latValue,
    };

    final response = await ApiService.post(ApiConstance.registerApi, postData);

    if (response.statusCode == 200) {
    } else {
      throw ServerException(errorModel: ErrorModel.formJson({'status': 0}));
    }
  }

  @override
  Future<bool> validateAccount() async {
    final postData = {
      'email': registerStream.emailValue,
      'otp': registerStream.codeValue,
    };
    final response = await ApiService.post(ApiConstance.registerApi, postData);
    final data = response.data;

    print("signUp ${response.statusCode}");
    print("signUp $data");
    if (response.statusCode == 200) {
      final token = data['user']['token'];
      sl<SecureStorageService>().write('token', token);
      print('user created');

      return true;
    } else {
      throw ServerException(errorModel: ErrorModel.formJson(data));
    }
  }

  @override
  Future<bool> logoutUser() async {
    final response = await ApiService.get(ApiConstance.registerApi);
    final data = response.data;

    if (response.statusCode == 200) {
      sl<SecureStorageService>().delete('token');
      print('user log out');

      return true;
    } else {
      throw ServerException(errorModel: ErrorModel.formJson(data));
    }
  }

  @override
  Future<List<SportDto>> getSports() async {
    final response = await ApiService.get(ApiConstance.getSportsApi);
    final data = response.data;

    if (response.statusCode == 200) {
      print('getSports ${data}');

      return sportDtoFromJson(json.encode(data));
    } else {
      throw ServerException(errorModel: ErrorModel.formJson(data));
    }
  }

  @override
  Future<UserDto> sendImageAndSports(
      List<int> imageBytes, String imageType, List<int> selectedSports) async {
    FormData formData = FormData();
    formData.files.add(MapEntry(
      'profile_image',
      MultipartFile.fromBytes(
        imageBytes,
        filename: 'profile_image.$imageType',
      ),
    ));

    formData.fields.add(MapEntry('type', imageType));

    // formData.fields
    //     .add(MapEntry('selected_sports[]', selectedSports.toString()));

    for (int sportId in selectedSports) {
      formData.fields.add(MapEntry('selected_sports[]', sportId.toString()));
    }
    print("sendImageAndSports ${formData.fields}");

    final response = await ApiService.postFormData(
        ApiConstance.sendImageAndSportsApi, formData);
    final data = response.data;
    print("sendImageAndSports $data");

    if (response.statusCode == 200) {
      return userDtoFromJson(json.encode(data));
    } else {
      print("Error Response: ${response.data}");
      throw ServerException(errorModel: ErrorModel.formJson(data));
    }
  }

  @override
  Future<UserDto> getUserInfo() async {
    try {
      final response = await ApiService.get(ApiConstance.getUserInfoApi);
      print('getUserInfo ${response.data}');
      print("response.statusCode ${response.statusCode}");

      final data = response.data;

      final stringData = json.encode(data);
      if (response.statusCode == 200) {
        return userDtoFromJson(stringData);
      } else {
        throw ServerException(errorModel: ErrorModel.formJson(data));
      }
    } catch (e) {
      print('error ${e.runtimeType}');
      throw ServerException(errorModel: ErrorModel.formJson({}));
    }
  }

  @override
  Future<UserDto> updateUserPreferences(
      int sportId, int favoriteHand, int favoritePos, int favoriteTime) async {
    final postData = {
      'sport_id': sportId,
      'use_option_id': favoriteHand,
      'postion_option_id': favoritePos,
      'time_option_id': favoriteHand,
    };

    try {
      final response =
          await ApiService.post(ApiConstance.updateUserPreferncesApi, postData);
      print('updateUserPreferences ${response.data}');
      print("response.statusCode ${response.statusCode}");

      final data = response.data;

      final stringData = json.encode(data);
      if (response.statusCode == 200) {
        return userDtoFromJson(stringData);
      } else {
        throw ServerException(errorModel: ErrorModel.formJson(data));
      }
    } catch (e) {
      print('error ${e.runtimeType}');
      throw ServerException(errorModel: ErrorModel.formJson({}));
    }
  }

  @override
  Future<UserDto> updateUserProfile(
      String userName,
      String phone,
      List<int> image,
      String type,
      double latitude,
      double longitude,
      List<int> selectedSports,
      String gender) async {
    FormData formData = FormData();
    formData.files.add(MapEntry(
      'profile_image',
      MultipartFile.fromBytes(
        image,
        filename: 'profile_image.$type',
      ),
    ));

    formData.fields.add(MapEntry('type', type));
    formData.fields.add(MapEntry('username', userName));
    formData.fields.add(MapEntry('phone', phone));
    formData.fields.add(MapEntry('gender', gender));

    // formData.fields
    //     .add(MapEntry('selected_sports[]', selectedSports.toString()));

    for (int sportId in selectedSports) {
      formData.fields.add(MapEntry('selected_sports[]', sportId.toString()));
    }
    print("sendImageAndSports ${formData.fields}");

    final response = await ApiService.postFormData(
        ApiConstance.updateUserProfileApi, formData);
    final data = response.data;
    debugPrint("updateUserProfile $data");

    if (response.statusCode == 200) {
      return userDtoFromJson(json.encode(data));
    } else {
      print("Error Response: ${response.data}");
      throw ServerException(errorModel: ErrorModel.formJson(data));
    }
  }

  @override
  Future<void> updateHandPreference(int sportId, String optionName) async {
    final postData = {
      'sport_id': sportId,
      'option_name': optionName,
    };

    try {
      final response =
          await ApiService.post(ApiConstance.updateUserPreferncesApi, postData);
      print('updateHandPrefernce ${response.data}');
      print(" updateHandPrefernce.statusCode ${response.statusCode}");

      final data = response.data;

      final stringData = json.encode(data);
      if (response.statusCode == 200) {
        print("updateHandPrefernce $data");
      } else {
        throw ServerException(errorModel: ErrorModel.formJson(data));
      }
    } catch (e) {
      print('error ${e.runtimeType}');
      throw ServerException(errorModel: ErrorModel.formJson({}));
    }
  }

  @override
  Future<void> updatePositionPreference(int sportId, String optionName) async {
    final postData = {
      'sport_id': sportId,
      'option_name': optionName,
    };

    try {
      final response =
          await ApiService.post(ApiConstance.updateUserPreferncesApi, postData);
      print('updatePositionPreference ${response.data}');
      print(" updatePositionPreference.statusCode ${response.statusCode}");

      final data = response.data;

      final stringData = json.encode(data);
      if (response.statusCode == 200) {
        print("updatePositionPreference $data");
      } else {
        throw ServerException(errorModel: ErrorModel.formJson(data));
      }
    } catch (e) {
      print('error ${e.runtimeType}');
      throw ServerException(errorModel: ErrorModel.formJson({}));
    }
  }

  @override
  Future<void> updateTimePreference(int sportId, String optionName) async {
    final postData = {
      'sport_id': sportId,
      'option_name': optionName,
    };

    try {
      final response =
          await ApiService.post(ApiConstance.updateUserPreferncesApi, postData);
      print('updateTimePreference ${response.data}');
      print(" updateTimePreference.statusCode ${response.statusCode}");

      final data = response.data;

      final stringData = json.encode(data);
      if (response.statusCode == 200) {
        print("updateTimePreference $data");
      } else {
        throw ServerException(errorModel: ErrorModel.formJson(data));
      }
    } catch (e) {
      print('error ${e.runtimeType}');
      throw ServerException(errorModel: ErrorModel.formJson({}));
    }
  }

  @override
  Future<String> sendMessage(String userMessage) async {
    try {
      if (userMessage.isNotEmpty) {
        String response = userMessage;
        return response;
      } else {
        throw ServerException(errorModel: ErrorModel.formJson(const {}));
      }
    } catch (e) {
      throw ServerException(errorModel: ErrorModel.formJson(const {}));
    }
  }
}
