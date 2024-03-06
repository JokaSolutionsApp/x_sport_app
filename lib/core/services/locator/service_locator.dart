import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:get_it/get_it.dart';
import 'package:x_sport/app/features/auth/data/datasource/user_remote_datasource.dart';
import 'package:x_sport/app/features/auth/data/repository/user_repository.dart';
import 'package:x_sport/app/features/auth/domain/usecase/chat_uscases/send_message_usecase.dart';
import 'package:x_sport/app/features/auth/domain/usecase/user_usecase/get_sports_usecase.dart';
import 'package:x_sport/app/features/auth/domain/usecase/user_usecase/get_user_info_usecase.dart';
import 'package:x_sport/app/features/auth/domain/usecase/user_usecase/logout_usecase.dart';
import 'package:x_sport/app/features/auth/domain/usecase/user_usecase/send_image_and_sports_usecase.dart';
import 'package:x_sport/app/features/auth/domain/usecase/user_usecase/update_hand_prefernce_usecase.dart';
import 'package:x_sport/app/features/auth/domain/usecase/user_usecase/update_position_prefernce_usecase.dart';
import 'package:x_sport/app/features/auth/domain/usecase/user_usecase/update_time_prefernce_usecase.dart';
import 'package:x_sport/app/features/auth/domain/usecase/user_usecase/update_user_preferences_usecase.dart';
import 'package:x_sport/app/features/auth/domain/usecase/user_usecase/update_user_profile.dart';
import 'package:x_sport/app/controllers/chat_bloc/chat_bloc.dart';
import 'package:x_sport/app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:x_sport/presentation/controllers/chat_bloc/chat_bloc.dart';
import '../../../app/features/auth/domain/repository/base_user_repository.dart';
import '../../../app/features/auth/domain/usecase/user_usecase/check_user_logged_usecase.dart';
import '../../../app/features/auth/domain/usecase/user_usecase/sign_in_usecase.dart';
import '../../../app/features/auth/domain/usecase/user_usecase/register_usecase.dart';
import '../../../app/features/auth/domain/usecase/user_usecase/validate_account_usecase.dart';
import '../preload_images_service.dart';
import '../secure_storage_service.dart.dart';

final GetIt sl = GetIt.instance;

class ServiceLocator {
  static void init() {
    // GoRouterService

    // SecureStorageService
    sl.registerFactory(() => SecureStorageService());

    sl.registerFactory(() => ImagePreloadingService());

    // Api Service
    sl.registerLazySingleton<Dio>(() {
      final BaseOptions baseOptions = BaseOptions(
        baseUrl: 'https://xsportapi-dev.us-east-1.elasticbeanstalk.com/api/',
        connectTimeout: const Duration(seconds: 12),
        receiveTimeout: const Duration(seconds: 12),
      );

      final Dio dio = Dio(baseOptions)
        ..options.followRedirects = true
        ..options.validateStatus = (status) {
          return status! < 500;
        };

      // Configure Dio to accept self-signed certificates (ONLY FOR DEVELOPMENT)
      (dio.httpClientAdapter as IOHttpClientAdapter).onHttpClientCreate =
          (HttpClient client) {
        client.badCertificateCallback =
            (X509Certificate cert, String host, int port) =>
                true; // Bypass SSL certificate validation
        return client;
      };

      // Add Bearer token interceptor
      dio.interceptors.add(InterceptorsWrapper(
        onRequest:
            (RequestOptions options, RequestInterceptorHandler handler) async {
          // Retrieve and set the user's bearer token from SecureStorageService or any other service you use
          final String? token = await sl<SecureStorageService>().read('token');
          if (token != null) {
            options.headers['Content-Type'] = 'application/json';
            options.headers['Authorization'] = 'Bearer $token';
            options.headers['Accept'] = 'text/plain';
          }
          return handler.next(options);
        },
      ));

      return dio;
    });

    sl.registerFactory(() => AuthBloc(
          sl(),
          sl(),
          sl(),
          sl(),
          sl(),
          sl(),
          sl(),
          sl(),
          sl(),
          sl(),
          sl(),
          sl(),
          sl(),
        ));
    sl.registerFactory(() => ChatBloc());

    // User UseCases
    sl.registerLazySingleton(() => SignInUseCase(sl()));
    sl.registerLazySingleton(() => SignUpUseCase(sl()));
    sl.registerLazySingleton(() => CheckUserLoggedUseCase(sl()));
    sl.registerLazySingleton(() => ValidateAccountUseCase(sl()));
    sl.registerLazySingleton(() => GetsportsUseCase(sl()));
    sl.registerLazySingleton(() => SendImageAndSportsUseCase(sl()));
    sl.registerLazySingleton(() => GetUserInfoUseCase(sl()));
    sl.registerLazySingleton(() => UpdateUserPreferencesUseCase(sl()));
    sl.registerLazySingleton(() => UpdateHandPrefernceUseCase(sl()));
    sl.registerLazySingleton(() => UpdatePositionPrefernceUseCase(sl()));
    sl.registerLazySingleton(() => UpdateTimePrefernceUseCase(sl()));
    sl.registerLazySingleton(() => UpdateUserProfileUseCase(sl()));
    sl.registerLazySingleton(() => LogoutUserUseCase(sl()));

    // chat bloc usecases
    sl.registerLazySingleton(() => SendMessageUseCase(sl()));

    sl.registerLazySingleton<BaseUserRepository>(() => UserRepository(sl()));

    sl.registerLazySingleton<BaseUserRemoteDataSource>(
        () => UserRemoteDataSource());
  }
}
