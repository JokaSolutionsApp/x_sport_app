// ignore_for_file: prefer_typing_uninitialized_variables, unnecessary_brace_in_string_interps, null_argument_to_non_null_type

import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:x_sport/app/features/auth/data/models/sport_model.dart';
import 'package:x_sport/app/features/auth/domain/enitites/sport_entity.dart';
import 'package:x_sport/app/features/auth/domain/enitites/user_entity.dart';
import 'package:x_sport/core/constance/api_constance.dart';
import 'package:x_sport/core/error/exceptions.dart';
import 'package:x_sport/core/network/error_message_model.dart';
import 'package:x_sport/core/services/api_service.dart';
import 'package:x_sport/core/services/locator/service_locator.dart';
import 'package:x_sport/core/services/secure_storage_service.dart.dart';
import 'package:x_sport/app/controllers/fileds_bloc.dart';

abstract class BaseUserRemoteDataSource {
  Future<UserEntity> signIn();

  Future<void> register();
  Future<UserEntity> getUserInfo();
  Future<UserEntity> updateUserPreferences(
      int sportId, int favoriteHand, int favoritePos, int favoriteTime);

  Future<UserEntity> updateUserProfile(
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
  Future<List<SportEntity>> getSports();
  Future<UserEntity> sendImageAndSports(
      List<int> imageBytes, String imageType, List<int> selectedSports);

  Future<String> sendMessage(String userMessage);
}

class UserRemoteDataSource extends BaseUserRemoteDataSource {
  final token = sl<SecureStorageService>().read('token');

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
      await sl<SecureStorageService>()
          .write('email', registerStream.emailValue);
      await sl<SecureStorageService>()
          .write('password', registerStream.passwordValue);
      await sl<SecureStorageService>().write('otp', 'true');
    } else {
      throw ServerException(errorModel: ErrorModel.formJson(response.data));
    }
  }

  @override
  Future<bool> validateAccount() async {
    final email = await sl<SecureStorageService>().read('email');
    final password = await sl<SecureStorageService>().read('password');
    final postData = {
      'Email': email,
      'Password': password,
      'Code': registerStream.codeValue,
    };
    print('postData $postData');
    final response =
        await ApiService.post(ApiConstance.validateAccountApi, postData);
    final data = response.data;

    if (response.statusCode == 200) {
      final token = data['authResult']['token'];
      final refreshToken = data['authResult']['refreshToken'];
      sl<SecureStorageService>().write('token', token);
      sl<SecureStorageService>().write('refreshToken', refreshToken);

      return true;
    } else {
      throw ServerException(errorModel: ErrorModel.formJson(data));
    }
  }

  @override
  Future<UserEntity> signIn() async {
    final postData = {
      'email_or_phone': signInStream.emailPhoneValue,
      'password': signInStream.passwordValue,
    };
    try {
      final response = await ApiService.post(ApiConstance.signInApi, postData);

      final data = response.data;

      final stringData = json.encode(data);
      if (response.statusCode == 200) {
        final token = data['token'];
        await sl<SecureStorageService>().write('token', token);

        return data;
      } else {
        throw ServerException(errorModel: ErrorModel.formJson(data));
      }
    } catch (e) {
      throw ServerException(errorModel: ErrorModel.formJson(const {}));
    }
  }

  @override
  Future<bool> checkUserLogged() async {
    final isLogged = await sl<SecureStorageService>().containsKey('token');
    if (isLogged) {
      return true;
    } else {
      throw ServerException(
          errorModel: ErrorModel.formJson(const {'status': 401}));
    }
  }

  @override
  Future<bool> logoutUser() async {
    final response = await ApiService.get(ApiConstance.registerApi);
    final data = response.data;

    if (response.statusCode == 200) {
      sl<SecureStorageService>().delete('token');

      return true;
    } else {
      throw ServerException(errorModel: ErrorModel.formJson(data));
    }
  }

  @override
  Future<List<SportEntity>> getSports() async {
    final response = await ApiService.get(ApiConstance.getSportsApi);
    final data = response.data;

    if (response.statusCode == 200) {
      return data;
    } else {
      throw ServerException(errorModel: ErrorModel.formJson(data));
    }
  }

  @override
  Future<UserEntity> sendImageAndSports(
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

    final response = await ApiService.postFormData(
        ApiConstance.sendImageAndSportsApi, formData);
    final data = response.data;

    if (response.statusCode == 200) {
      return data;
    } else {
      throw ServerException(errorModel: ErrorModel.formJson(data));
    }
  }

  @override
  Future<UserEntity> getUserInfo() async {
    try {
      final response = await ApiService.get(ApiConstance.getUserInfoApi);

      final data = response.data;

      final stringData = json.encode(data);
      if (response.statusCode == 200) {
        return data;
      } else {
        throw ServerException(errorModel: ErrorModel.formJson(data));
      }
    } catch (e) {
      throw ServerException(errorModel: ErrorModel.formJson(const {}));
    }
  }

  @override
  Future<UserEntity> updateUserPreferences(
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

      final data = response.data;

      final stringData = json.encode(data);
      if (response.statusCode == 200) {
        return data;
      } else {
        throw ServerException(errorModel: ErrorModel.formJson(data));
      }
    } catch (e) {
      throw ServerException(errorModel: ErrorModel.formJson(const {}));
    }
  }

  @override
  Future<UserEntity> updateUserProfile(
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

    final response = await ApiService.postFormData(
        ApiConstance.updateUserProfileApi, formData);
    final data = response.data;

    if (response.statusCode == 200) {
      return data;
    } else {
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

      final data = response.data;

      final stringData = json.encode(data);
      if (response.statusCode == 200) {
      } else {
        throw ServerException(errorModel: ErrorModel.formJson(data));
      }
    } catch (e) {
      throw ServerException(errorModel: ErrorModel.formJson(const {}));
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

      final data = response.data;

      final stringData = json.encode(data);
      if (response.statusCode == 200) {
      } else {
        throw ServerException(errorModel: ErrorModel.formJson(data));
      }
    } catch (e) {
      throw ServerException(errorModel: ErrorModel.formJson(const {}));
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

      final data = response.data;

      final stringData = json.encode(data);
      if (response.statusCode == 200) {
      } else {
        throw ServerException(errorModel: ErrorModel.formJson(data));
      }
    } catch (e) {
      throw ServerException(errorModel: ErrorModel.formJson(const {}));
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
