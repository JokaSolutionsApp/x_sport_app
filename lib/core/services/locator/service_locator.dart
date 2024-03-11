import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:get_it/get_it.dart';
import 'package:x_sport/app/features/auth/data/datasource/user_remote_datasource.dart';
import 'package:x_sport/app/features/auth/data/repository/user_repository.dart';
import 'package:x_sport/app/features/auth/domain/repository/base_user_repository.dart';
import 'package:x_sport/app/features/auth/domain/usecase/chat_uscases/send_message_usecase.dart';
import 'package:x_sport/app/features/auth/domain/usecase/user_usecase/add_favorite_sports_usecse.dart';
import 'package:x_sport/app/features/auth/domain/usecase/user_usecase/check_user_logged_usecase.dart';
import 'package:x_sport/app/features/auth/domain/usecase/user_usecase/complete_resgisteration_usecase.dart';
import 'package:x_sport/app/features/auth/domain/usecase/user_usecase/confirm_user_email_usecase.dart';
import 'package:x_sport/app/features/auth/domain/usecase/user_usecase/delete_favorite_sports_usecse.dart';
import 'package:x_sport/app/features/auth/domain/usecase/user_usecase/edit__user_profile_usecase.dart';
import 'package:x_sport/app/features/auth/domain/usecase/user_usecase/edit_preferences_usecase.dart';
import 'package:x_sport/app/features/auth/domain/usecase/user_usecase/get_sports_usecase.dart';
import 'package:x_sport/app/features/auth/domain/usecase/user_usecase/get_user_profile_usecase.dart';
import 'package:x_sport/app/features/auth/domain/usecase/user_usecase/login_usecase.dart';
import 'package:x_sport/app/features/auth/domain/usecase/user_usecase/logout_usecase.dart';
import 'package:x_sport/app/features/auth/domain/usecase/user_usecase/register_usecase.dart';
import 'package:x_sport/app/features/auth/domain/usecase/user_usecase/resend_confirm_user_email_usecase.dart';
import 'package:x_sport/app/features/auth/domain/usecase/user_usecase/select_current_sport_usecase.dart';
import 'package:x_sport/app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:x_sport/core/constance/api_constance.dart';
import 'package:x_sport/core/services/preload_images_service.dart';
import 'package:x_sport/core/services/secure_storage_service.dart.dart';
import 'package:x_sport/presentation/controllers/chat_bloc/chat_bloc.dart';

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
        baseUrl: ApiConstance.baseUrl,
        receiveDataWhenStatusError: true,
        connectTimeout: const Duration(seconds: 20),
        receiveTimeout: const Duration(seconds: 20),
      );

      final Dio dio = Dio(baseOptions)
        ..options.followRedirects = true
        ..options.validateStatus = (status) {
          return status! < 600;
        };

      (dio.httpClientAdapter as IOHttpClientAdapter).onHttpClientCreate =
          (HttpClient client) {
        client.badCertificateCallback =
            (X509Certificate cert, String host, int port) => true;
        return client;
      };
      dio.interceptors.add(LogInterceptor(
        requestBody: true,
        responseBody: true,
      ));
      dio.interceptors.add(InterceptorsWrapper(
        onRequest:
            (RequestOptions options, RequestInterceptorHandler handler) async {
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
    sl.registerLazySingleton(() => LoginUseCase(sl()));
    sl.registerLazySingleton(() => RegisterUseCase(sl()));
    sl.registerLazySingleton(() => EditUserProfileUseCase(sl()));
    sl.registerLazySingleton(() => CheckUserLoggedUseCase(sl()));
    sl.registerLazySingleton(() => ConfirmUserEmailUseCase(sl()));
    sl.registerLazySingleton(() => ResendConfirmUserEmailUseCase(sl()));
    sl.registerLazySingleton(() => SelectCurrentSportUseCase(sl()));
    sl.registerLazySingleton(() => GetsportsUseCase(sl()));
    sl.registerLazySingleton(() => CompleteRegistrationUseCase(sl()));
    sl.registerLazySingleton(() => GetUserProfileUseCase(sl()));
    sl.registerLazySingleton(() => EditPreferencesUseCase(sl()));
    sl.registerLazySingleton(() => LogoutUserUseCase(sl()));
    sl.registerLazySingleton(() => AddFavoriteSportsUseCase(sl()));
    sl.registerLazySingleton(() => DeleteFavoriteSportsUseCase(sl()));

    // chat bloc usecases
    sl.registerLazySingleton(() => SendMessageUseCase(sl()));

    sl.registerLazySingleton<BaseUserRepository>(() => UserRepository(sl()));

    sl.registerLazySingleton<BaseUserRemoteDataSource>(
        () => UserRemoteDataSource());
  }
}
