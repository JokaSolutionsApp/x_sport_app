// ignore_for_file: prefer_typing_uninitialized_variables, unnecessary_brace_in_string_interps, null_argument_to_non_null_type

import 'dart:async';
import 'package:dio/dio.dart';
import 'package:x_sport/app/features/auth/data/datasource/params/auth_params.dart';
import 'package:x_sport/app/features/auth/data/models/sport_model.dart';
import 'package:x_sport/app/features/auth/data/models/user_profile_model.dart';
import 'package:x_sport/app/features/auth/domain/enitites/sport_entity.dart';
import 'package:x_sport/app/features/auth/domain/enitites/user_profile_entity.dart';
import 'package:x_sport/app/features/auth/domain/params/edit_preferences_params.dart';
import 'package:x_sport/core/constance/api_constance.dart';
import 'package:x_sport/core/error/exceptions.dart';
import 'package:x_sport/core/network/error_message_model.dart';
import 'package:x_sport/core/services/api_service.dart';
import 'package:x_sport/core/services/locator/service_locator.dart';
import 'package:x_sport/core/services/secure_storage_service.dart.dart';
import 'package:x_sport/app/controllers/fileds_bloc.dart';

abstract class BaseUserRemoteDataSource {
  Future<UserProfileEntity> login();
  Future<bool> register();
  Future<UserProfileEntity> editUserProfile(
      {required EditUserProfileParams params});
  Future<bool> deleteUserProfile();
  Future<UserProfileEntity> getUserProfile();
  Future<UserProfileEntity> editPreferences({required PreferenceValue params});

  Future<UserProfileEntity> deleteFavoriteSports(
      {required List<int> sportsIds});
  Future<UserProfileEntity> addFavoriteSports({required List<int> sportsIds});
  Future<UserProfileEntity> selectCurrentSport({required int sportId});
  Future<bool> checkUserLogged();
  Future<List<SportEntity>> confirmUserEmail();
  Future<void> resendConfirmUserEmail();

  Future<bool> logoutUser();
  Future<List<SportEntity>> getSports();
  Future<UserProfileEntity> completeRegistration(
      List<int> imageBytes, String imageType, List<int> selectedSports);

  Future<String> sendMessage(String userMessage);
}

class UserRemoteDataSource extends BaseUserRemoteDataSource {
  final token = sl<SecureStorageService>().read('token');

  @override
  Future<bool> register() async {
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
      return true;
    } else if (response.statusCode == 500) {
      throw ServerException(errorModel: ErrorModel.formJson(response.data));
    } else {
      throw ServerException(errorModel: ErrorModel.formJson(response.data));
    }
  }

  @override
  Future<List<SportEntity>> confirmUserEmail() async {
    await sl<SecureStorageService>().write('password', 'Ammarlm4@');
    final email = await sl<SecureStorageService>().read('email');
    final password = await sl<SecureStorageService>().read('password');

    final postData = {
      'Email': email,
      'Password': password,
      'Code': registerStream.codeValue,
    };
    final response =
        await ApiService.post(ApiConstance.confirmEmailApi, postData);
    final data = response.data['data'];
    print('postData $data');

    if (response.statusCode == 200) {
      final result = data['sports'];
      final token = data['authResult']['token'];
      final refreshToken = data['authResult']['refreshToken'];
      sl<SecureStorageService>().write('token', token);
      sl<SecureStorageService>().write('refreshToken', refreshToken);
      return result.map<SportEntity>((e) => SportModel.fromJson(e)).toList();
    } else {
      throw ServerException(errorModel: ErrorModel.formJson(data));
    }
  }

  @override
  Future<void> resendConfirmUserEmail() async {
    final email = await sl<SecureStorageService>().read('email');
    final password = await sl<SecureStorageService>().read('password');

    final postData = {
      'Email': email,
      'Password': password,
    };
    final response =
        await ApiService.post(ApiConstance.resendConfirmEmailApi, postData);
    final data = response.data;

    print(data);

    if (response.statusCode == 200) {
    } else {
      throw ServerException(errorModel: ErrorModel.formJson(data));
    }
  }

  @override
  Future<UserProfileEntity> completeRegistration(
      List<int> imageBytes, String imageType, List<int> selectedSports) async {
    FormData formData = FormData();
    formData.files.add(MapEntry(
      'File',
      MultipartFile.fromBytes(
        imageBytes,
        filename: 'upload_image.$imageType',
      ),
    ));

    for (int sportId in selectedSports) {
      formData.fields.add(MapEntry('SportsIds[]', sportId.toString()));
    }

    final response = await ApiService.postFormData(
        ApiConstance.completeRegistrationApi, formData);
    final data = response.data;
    print(formData);
    print(data);
    if (response.statusCode == 200) {
      return UserProfileModel.fromJson(data['data']);
    } else {
      throw ServerException(errorModel: ErrorModel.formJson(data));
    }
  }

  @override
  Future<UserProfileEntity> login() async {
    final postData = {
      'email': signInStream.emailPhoneValue,
      'password': signInStream.passwordValue,
    };

    final response = await ApiService.post(ApiConstance.loginApi, postData);

    final data = response.data;

    if (response.statusCode == 200) {
      final token = data['data']['authResult']['token'];
      final refreshToken = data['data']['authResult']['refreshToken'];
      sl<SecureStorageService>().write('token', token);
      sl<SecureStorageService>().write('refreshToken', refreshToken);

      return UserProfileModel.fromJson(data['data']['userProfile']);
    } else if (response.statusCode == 500) {
      throw ServerException(errorModel: ErrorModel.formJson(data));
    } else {
      throw ServerException(errorModel: ErrorModel.formJson(data));
    }
  }

  @override
  Future<bool> checkUserLogged() async {
    final isLogged = await sl<SecureStorageService>().containsKey('token');
    print(isLogged);
    if (isLogged) {
      return true;
    } else {
      return false;
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
    print('$data getSports');

    if (response.statusCode == 200) {
      return data['data']
          .map<SportEntity>((e) => SportModel.fromJson(e))
          .toList();
    } else {
      throw ServerException(errorModel: ErrorModel.formJson(data));
    }
  }

  @override
  Future<UserProfileEntity> editPreferences(
      {required PreferenceValue params}) async {
    final postData = params.toMap();

    final response =
        await ApiService.post(ApiConstance.editPreferencesApi, postData);

    final data = response.data;
    print('editPreferences $data');

    if (response.statusCode == 200) {
      return UserProfileModel.fromJson(data['data']);
    } else {
      throw ServerException(errorModel: ErrorModel.formJson(data));
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

  @override
  Future<UserProfileEntity> addFavoriteSports(
      {required List<int> sportsIds}) async {
    final postData = {
      'sportsIds': sportsIds,
    };

    final response =
        await ApiService.post(ApiConstance.addFavoriteSportsApi, postData);
    final data = response.data['data'];
    print('addFavoriteSports $data');

    if (response.statusCode == 200) {
      return UserProfileModel.fromJson(data);
    } else {
      throw ServerException(errorModel: ErrorModel.formJson(data));
    }
  }

  @override
  Future<UserProfileEntity> deleteFavoriteSports(
      {required List<int> sportsIds}) async {
    final postData = {
      'sportsIds': sportsIds,
    };

    final response =
        await ApiService.post(ApiConstance.deleteFavoriteSports, postData);
    final data = response.data['data'];
    print('deleteFavoriteSports $data');
    if (response.statusCode == 200) {
      return UserProfileModel.fromJson(data);
    } else {
      throw ServerException(errorModel: ErrorModel.formJson(data));
    }
  }

  @override
  Future<UserProfileEntity> getUserProfile() async {
    print('object');
    final response = await ApiService.get(ApiConstance.getUserProfileApi);

    final data = response.data['data'];
    print("getUserProfile $data");
    if (response.statusCode == 200) {
      return UserProfileModel.fromJson(data);
    } else if (response.statusCode == 401) {
      await sl<SecureStorageService>().delete('token');
      await sl<SecureStorageService>().delete('refreshToken');
      throw ServerException(
          errorModel: ErrorModel.formJson({'statusCode': 401}));
    } else {
      throw ServerException(errorModel: ErrorModel.formJson(data));
    }
  }

  @override
  Future<UserProfileEntity> editUserProfile(
      {required EditUserProfileParams params}) async {
    FormData formData = FormData();
    if (params.imageBytes != null) {
      formData.files.add(MapEntry(
        'profile_image',
        MultipartFile.fromBytes(
          params.imageBytes!,
          filename: '${params.imageName}.${params.imageType}',
        ),
      ));
    }

    formData.fields.add(MapEntry('Name', params.name));
    formData.fields.add(MapEntry('Phone', params.phone));
    formData.fields.add(MapEntry('Gender', params.gender));
    formData.fields.add(MapEntry('Longitude', params.lat.toString()));
    formData.fields.add(MapEntry('Latitude', params.long.toString()));
    print("int sportId in params.sportIds ${params.sportIds}");
    for (int sportId in params.sportIds) {
      formData.fields.add(MapEntry('SportsIds[]', sportId.toString()));
    }

    final response = await ApiService.postFormData(
        ApiConstance.editUserProfileApi, formData);
    final data = response.data;

    if (response.statusCode == 200) {
      return UserProfileModel.fromJson(data['data']);
    } else {
      throw ServerException(errorModel: ErrorModel.formJson(data));
    }
  }

  @override
  Future<UserProfileEntity> selectCurrentSport({required int sportId}) async {
    try {
      final postData = {'sportId': sportId};
      final response =
          await ApiService.post(ApiConstance.selectCurrentSportApi, postData);

      final data = response.data;

      if (response.statusCode == 200) {
        return UserProfileModel.fromJson(data);
      } else {
        throw ServerException(errorModel: ErrorModel.formJson(data));
      }
    } catch (e) {
      throw ServerException(errorModel: ErrorModel.formJson(const {}));
    }
  }

  @override
  Future<bool> deleteUserProfile() async {
    try {
      final response = await ApiService.delete(ApiConstance.deleteUserProfile);

      final data = response.data['data'];

      if (response.statusCode == 200) {
        return data;
      } else {
        throw ServerException(errorModel: ErrorModel.formJson(data));
      }
    } catch (e) {
      throw ServerException(errorModel: ErrorModel.formJson(const {}));
    }
  }
}
