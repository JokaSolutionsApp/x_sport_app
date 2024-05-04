import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:x_sport/app/controllers/fileds_bloc.dart';
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
import 'package:x_sport/core/utils/enums.dart';

abstract class BaseUserRemoteDataSource {
  Future<UserProfileEntity> login();
  Future<UserProfileEntity> googleLogin();

  Future<bool> register();
  Future<bool> changeEmail();
  Future<bool> changePassword();
  Future<UserProfileEntity> editUserProfile(
      {required EditUserProfileParams params});
  Future<bool> deleteUserProfile();
  Future<UserProfileEntity> getUserProfile();
  Future<UserProfileEntity> editPreferences({required PreferenceValue params});

  Future<UserProfileEntity> deleteFavoriteSports(
      {required List<int> sportsIds});
  Future<UserProfileEntity> addFavoriteSports({required List<int> sportsIds});
  Future<UserProfileEntity> selectCurrentSport({required int sportId});
  Future<UserAuthState> checkAccountStatus();
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
    print("response.data ${response.data}");
    if (response.statusCode == 200) {
      await sl<SecureStorageService>()
          .write('email', registerStream.emailValue);
      await sl<SecureStorageService>()
          .write('password', registerStream.passwordValue);
      await sl<SecureStorageService>().write('otp', 'true');
      return true;
    } else {
      Map<String, dynamic> responseData =
          response.data is String ? json.decode(response.data) : response.data;

      ErrorModel errorModel = ErrorModel.fromJson(responseData);
      throw ServerException(errorModel: errorModel);
    }
  }

  @override
  Future<List<SportEntity>> confirmUserEmail() async {
    final email = await sl<SecureStorageService>().read('email');
    final password = await sl<SecureStorageService>().read('password');

    final postData = {
      'email': email,
      'password': password,
      'code': registerStream.codeValue,
    };
    final response =
        await ApiService.post(ApiConstance.confirmEmailApi, postData);
    final data = response.data;

    if (response.statusCode == 200) {
      final result = data['data']['sports'];
      final token = data['data']['authResult']['token'];
      final refreshToken = data['data']['authResult']['refreshToken'];
      sl<SecureStorageService>().write('token', token);
      sl<SecureStorageService>().write('refreshToken', refreshToken);
      return result.map<SportEntity>((e) => SportModel.fromJson(e)).toList();
    } else {
      throw ServerException(errorModel: ErrorModel.fromJson(data));
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
      throw ServerException(errorModel: ErrorModel.fromJson(data));
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
      throw ServerException(errorModel: ErrorModel.fromJson(data));
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
      sl<SecureStorageService>().write('token', token);
      sl<SecureStorageService>().write('email', signInStream.emailPhoneValue);

      return UserProfileModel.fromJson(data['data']['userProfile']);
    } else if (response.statusCode == 500) {
      throw ServerException(errorModel: ErrorModel.fromJson(data));
    } else {
      throw ServerException(errorModel: ErrorModel.fromJson(data));
    }
  }

  @override
  Future<UserProfileEntity> googleLogin() async {
    GoogleSignIn googleSignIn = GoogleSignIn(
      scopes: [
        'email',
        'profile', // Basic profile information scope.
      ],
    );

    try {
      // Check if user is already signed in and disconnect if true
      if (await googleSignIn.isSignedIn()) {
        await googleSignIn.disconnect();
      }
    } catch (e) {
      print('Error disconnecting from Google: $e');
      // You might want to handle this more gracefully in a production app
    }

    final GoogleSignInAccount? account = await googleSignIn.signIn();
    print('Signed in account: $account');

    if (account != null) {
      final GoogleSignInAuthentication googleAuth =
          await account.authentication;
      print("googleAuth ${googleAuth.idToken} ${googleAuth.accessToken}");

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final firebaseAuth =
          await FirebaseAuth.instance.signInWithCredential(credential);
      final idToken = await firebaseAuth.user!.getIdToken();
      print("firebaseAuth $idToken");

      Map<String, dynamic> postData = {
        'name': account.displayName,
        'email': account.email,
        'firebaseToken': idToken,
        'latitude': registerStream.latValue,
        'longitude': registerStream.longeValue,
      };
      print("postData $postData");

      final response =
          await ApiService.post(ApiConstance.googleLoginApi, postData);
      final data = response.data;
      print('googleLogin $data');
      print('googleLogin ${response.statusCode}');

      if (response.statusCode == 200) {
        final token = data['data']['authResult']['token'];
        final refreshToken = data['data']['authResult']['refreshToken'];
        sl<SecureStorageService>().write('token', token);
        sl<SecureStorageService>().write('refreshToken', refreshToken);
        return UserProfileModel.fromJson(data['data']);
      } else {
        throw ServerException(errorModel: ErrorModel.fromJson(data));
      }
    } else {
      throw ServerException(errorModel: ErrorModel.fromJson(const {}));
    }
  }

  @override
  Future<UserAuthState> checkAccountStatus() async {
    String? email = await sl<SecureStorageService>().read('email');
    final token = await sl<SecureStorageService>().read('token');

    final postData = {
      'email': email,
    };
    final response =
        await ApiService.post(ApiConstance.accountStatussApi, postData);

    final data = response.data;
    print("statusValue $data");
    final statusValue = data['data'];
    if (response.statusCode == 200) {
      if (statusValue == 0) {
        return UserAuthState.guest;
      } else if (statusValue == 1) {
        return UserAuthState.loggedIn;
      } else if (statusValue == 2) {
        return UserAuthState.welcome;
      } else if (statusValue == 3) {
        return UserAuthState.otp;
      } else {
        return UserAuthState.guest;
      }
    } else {
      return UserAuthState.guest;
    }
  }

  @override
  Future<bool> logoutUser() async {
    final response = await ApiService.get(ApiConstance.registerApi);
    final data = response.data;

    if (response.statusCode == 200) {
      return true;
    } else {
      throw ServerException(errorModel: ErrorModel.fromJson(data));
    }
  }

  @override
  Future<List<SportEntity>> getSports() async {
    final response = await ApiService.get(ApiConstance.getSportsApi);
    final data = response.data;

    if (response.statusCode == 200 &&
        data != null &&
        data.containsKey('data') &&
        data['data'] is List) {
      print("getSports true");
      List<dynamic> sportsJson = data['data'];
      List<SportEntity> sports = sportsJson
          .map<SportEntity>((json) => SportModel.fromJson(json))
          .toList();
      await sl<SecureStorageService>().write('sports', jsonEncode(sportsJson));
      return sports;
    } else {
      if (data.containsKey('error') && data['error'].containsKey('message')) {
        throw ServerException(
            errorModel: ErrorModel(
                statusCode: data['statusCode'] ?? 500,
                message: data['error']['message']));
      } else {
        throw const ServerException(
            errorModel: ErrorModel(
                statusCode: 500,
                message: "Unexpected response format from server."));
      }
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
      throw ServerException(errorModel: ErrorModel.fromJson(data));
    }
  }

  @override
  Future<String> sendMessage(String userMessage) async {
    try {
      if (userMessage.isNotEmpty) {
        String response = userMessage;
        return response;
      } else {
        throw ServerException(errorModel: ErrorModel.fromJson(const {}));
      }
    } catch (e) {
      throw ServerException(errorModel: ErrorModel.fromJson(const {}));
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
    final data = response.data;
    print('addFavoriteSports $data');

    if (response.statusCode == 200) {
      return UserProfileModel.fromJson(data['data']);
    } else {
      throw ServerException(errorModel: ErrorModel.fromJson(data));
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
      throw ServerException(errorModel: ErrorModel.fromJson(data));
    }
  }

  @override
  Future<UserProfileEntity> getUserProfile() async {
    final response = await ApiService.get(ApiConstance.getUserProfileApi);

    final data = response.data;
    print("getUserProfile $data");
    if (response.statusCode == 200) {
      return UserProfileModel.fromJson(data['data']);
    } else if (response.statusCode == 401) {
      // await sl<SecureStorageService>().delete('token');
      // await sl<SecureStorageService>().delete('refreshToken');
      throw ServerException(errorModel: ErrorModel.fromJson(data));
    } else {
      throw ServerException(errorModel: ErrorModel.fromJson(data));
    }
  }

  @override
  Future<UserProfileEntity> editUserProfile(
      {required EditUserProfileParams params}) async {
    FormData formData = FormData();
    if (params.imageBytes != null) {
      formData.files.add(MapEntry(
        'File',
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
    for (int sportId in params.sportIds) {
      formData.fields.add(MapEntry('SportsIds[]', sportId.toString()));
    }

    final response = await ApiService.postFormData(
        ApiConstance.editUserProfileApi, formData);
    final data = response.data;

    if (response.statusCode == 200) {
      return UserProfileModel.fromJson(data['data']);
    } else {
      throw ServerException(errorModel: ErrorModel.fromJson(data));
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
        throw ServerException(errorModel: ErrorModel.fromJson(data));
      }
    } catch (e) {
      throw ServerException(errorModel: ErrorModel.fromJson(const {}));
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
        throw ServerException(errorModel: ErrorModel.fromJson(data));
      }
    } catch (e) {
      throw ServerException(errorModel: ErrorModel.fromJson(const {}));
    }
  }

  @override
  Future<bool> changeEmail() async {
    try {
      final postData = {'': ''};

      final response =
          await ApiService.post(ApiConstance.changeEmail, postData);

      final data = response.data['data'];

      if (response.statusCode == 200) {
        return data;
      } else {
        throw ServerException(errorModel: ErrorModel.fromJson(data));
      }
    } catch (e) {
      throw ServerException(errorModel: ErrorModel.fromJson(const {}));
    }
  }

  @override
  Future<bool> changePassword() async {
    final postData = {
      "oldPassword": editProfileStream.passwordValue,
      "newPassword": editProfileStream.newPasswordValue
    };
    final response =
        await ApiService.post(ApiConstance.changePassword, postData);

    final data = response.data;
    print('changePassword $data');

    if (response.statusCode == 200) {
      return data['data'];
    } else {
      throw ServerException(errorModel: ErrorModel.fromJson(data));
    }
  }
}
