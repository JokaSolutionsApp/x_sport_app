import 'dart:io';

import 'package:crypto/crypto.dart';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:get_it/get_it.dart';
import 'package:x_sport/app/features/academy/domain/usecase/add_academy_review.dart';
import 'package:x_sport/app/features/academy/domain/usecase/get_all_Academies.dart';
import 'package:x_sport/app/features/academy/domain/usecase/inroll_user_in_course.dart';
import 'package:x_sport/app/features/archives/data/datasource/academy_remote_datasource.dart';
import 'package:x_sport/app/features/archives/data/repository/archive_repository.dart';
import 'package:x_sport/app/features/archives/domain/repository/base_archive_repository.dart';
import 'package:x_sport/app/features/archives/domain/usecase/get_academy_subscription_archive_usecase.dart';
import 'package:x_sport/app/features/archives/presentation/bloc/archive_bloc.dart';
import 'package:x_sport/app/features/auth/domain/usecase/user_usecase/change_email_usecase.dart';
import 'package:x_sport/app/features/auth/domain/usecase/user_usecase/change_password_usecase.dart';
import 'package:x_sport/app/features/courts/data/datasource/stadium_remote_datasource.dart';
import 'package:x_sport/app/features/courts/data/repository/court_repository.dart';
import 'package:x_sport/app/features/courts/domain/repository/base_stadium_repository.dart';
import 'package:x_sport/app/features/courts/domain/usecase/get_about_stadium_usecase.dart';
import 'package:x_sport/app/features/courts/domain/usecase/get_friends_stadiums_usecase.dart';
import 'package:x_sport/app/features/courts/domain/usecase/get_near_by_stadiums_usecase.dart';
import 'package:x_sport/app/features/courts/presentation/bloc/stadium_bloc.dart';

import '../../../app/features/academy/data/datasource/academy_remote_datasource.dart';
import '../../../app/features/academy/data/repository/academy_repository.dart';
import '../../../app/features/academy/domain/repository/base_academy_repository.dart';
import '../../../app/features/academy/domain/usecase/get_about_academy_usecase.dart';
import '../../../app/features/academy/domain/usecase/get_academy_courses_in_date_usecase.dart';
import '../../../app/features/academy/domain/usecase/get_academy_courses_usecase.dart';
import '../../../app/features/academy/domain/usecase/get_academy_review_usecase.dart';
import '../../../app/features/academy/domain/usecase/get_sports_membership_usecase.dart';
import '../../../app/features/academy/domain/usecase/get_suggested_academies_usecase.dart';
import '../../../app/features/academy/presentation/bloc/academy_bloc.dart';
import '../../../app/features/auth/data/datasource/user_remote_datasource.dart';
import '../../../app/features/auth/data/repository/user_repository.dart';
import '../../../app/features/auth/domain/repository/base_user_repository.dart';
import '../../../app/features/auth/domain/usecase/chat_uscases/send_message_usecase.dart';
import '../../../app/features/auth/domain/usecase/user_usecase/add_favorite_sports_usecse.dart';
import '../../../app/features/auth/domain/usecase/user_usecase/check_user_logged_usecase.dart';
import '../../../app/features/auth/domain/usecase/user_usecase/complete_resgisteration_usecase.dart';
import '../../../app/features/auth/domain/usecase/user_usecase/confirm_user_email_usecase.dart';
import '../../../app/features/auth/domain/usecase/user_usecase/delete_favorite_sports_usecse.dart';
import '../../../app/features/auth/domain/usecase/user_usecase/delete_user_profile.dart';
import '../../../app/features/auth/domain/usecase/user_usecase/edit__user_profile_usecase.dart';
import '../../../app/features/auth/domain/usecase/user_usecase/edit_preferences_usecase.dart';
import '../../../app/features/auth/domain/usecase/user_usecase/get_sports_usecase.dart';
import '../../../app/features/auth/domain/usecase/user_usecase/get_user_profile_usecase.dart';
import '../../../app/features/auth/domain/usecase/user_usecase/google_login_usecase.dart';
import '../../../app/features/auth/domain/usecase/user_usecase/login_usecase.dart';
import '../../../app/features/auth/domain/usecase/user_usecase/logout_usecase.dart';
import '../../../app/features/auth/domain/usecase/user_usecase/register_usecase.dart';
import '../../../app/features/auth/domain/usecase/user_usecase/resend_confirm_user_email_usecase.dart';
import '../../../app/features/auth/domain/usecase/user_usecase/select_current_sport_usecase.dart';
import '../../../app/features/auth/presentation/bloc/auth_bloc.dart';
import '../../../presentation/controllers/chat_bloc/chat_bloc.dart';
import '../../constance/api_constance.dart';
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
        baseUrl: ApiConstance.baseUrl,
        receiveDataWhenStatusError: true,
        connectTimeout: const Duration(seconds: 20),
        receiveTimeout: const Duration(seconds: 20),
      );

      final Dio dio = Dio(baseOptions)
        // ..options.followRedirects = true
        ..options.validateStatus = (status) {
          return status! < 600;
        };

      // // Your server's SHA256 fingerprint
      // String fingerprint =
      //     "e0f49d9a71f9754f4a5d3f1f16b11a65d049b1814576db09a460e4a55de899b4"
      //         .toLowerCase();

      // dio.httpClientAdapter = IOHttpClientAdapter(
      //   createHttpClient: () {
      //     // Don't trust any certificate just because their root cert is trusted.
      //     final HttpClient client =
      //         HttpClient(context: SecurityContext(withTrustedRoots: true));
      //     // You can test the intermediate / root cert here. We just ignore it.
      //     client.badCertificateCallback = (cert, host, port) => true;
      //     return client;
      //   },
      //   validateCertificate: (cert, host, port) {
      //     // Check that the cert fingerprint matches the one we expect.
      //     // We definitely require _some_ certificate.
      //     if (cert == null) {
      //       return false;
      //     }
      //     // Validate it any way you want. Here we only check that
      //     // the fingerprint matches the OpenSSL SHA256.
      //     return fingerprint == sha256.convert(cert.der).toString();
      //   },
      // );
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
            options.headers['culture'] = 'ar';
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
          sl(),
          sl(),
          sl(),
          sl(),
        ));
    sl.registerFactory(() => ChatBloc());
    sl.registerFactory(() => AcademyBloc(
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

    sl.registerFactory(() => StadiumBloc(
          sl(),
          sl(),
          sl(),
        ));
    sl.registerFactory(() => ArchiveBloc(
          sl(),
        ));
    // User UseCases
    sl.registerLazySingleton(() => LoginUseCase(sl()));
    sl.registerLazySingleton(() => GoogleLoginUseCase(sl()));
    sl.registerLazySingleton(() => RegisterUseCase(sl()));
    sl.registerLazySingleton(() => EditUserProfileUseCase(sl()));
    sl.registerLazySingleton(() => AccountStatusUseCase(sl()));
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
    sl.registerLazySingleton(() => DeleteUserProfileUseCase(sl()));
    sl.registerLazySingleton(() => ChangeEmailUseCase(sl()));
    sl.registerLazySingleton(() => ChangePasswordUseCase(sl()));

    // chat bloc usecases
    sl.registerLazySingleton(() => SendMessageUseCase(sl()));

    // academy bloc usecases
    sl.registerLazySingleton(() => GetSuggestedAcademiesUseCase(sl()));
    sl.registerLazySingleton(() => GetAllAcademiesUseCase(sl()));
    sl.registerLazySingleton(() => GetAboutAcademyUseCase(sl()));
    sl.registerLazySingleton(() => GetCoursesToSubscribeUseCase(sl()));
    sl.registerLazySingleton(() => GetCoursesToSubscribeInDateUseCase(sl()));
    sl.registerLazySingleton(() => GetAcademyReviewUseCase(sl()));
    sl.registerLazySingleton(() => GetSportsMembershipUseCase(sl()));
    sl.registerLazySingleton(() => InrollUserInCourseUseCase(sl()));
    sl.registerLazySingleton(() => AddAcademyReviewUseCase(sl()));

    // stadium bloc usecases
    sl.registerLazySingleton(() => GetFreindsStadiumsCase(sl()));
    sl.registerLazySingleton(() => GetNearByStadiumsCase(sl()));
    sl.registerLazySingleton(() => GetAboutStadiumUseCase(sl()));

    // archive bloc usecases
    sl.registerLazySingleton(() => GetAcademySupscriptionArchiveUseCase(sl()));

    sl.registerLazySingleton<BaseUserRepository>(() => UserRepository(sl()));
    sl.registerLazySingleton<BaseAcademyRepository>(
        () => AcademyRepository(sl()));
    sl.registerLazySingleton<BaseStadiumRepository>(
        () => StadiumRepository(sl()));
    sl.registerLazySingleton<BaseArchiveRepository>(
        () => ArchiveRepository(sl()));

    sl.registerLazySingleton<BaseUserRemoteDataSource>(
        () => UserRemoteDataSource());
    sl.registerLazySingleton<BaseAcademyRemoteDataSource>(
        () => AcademyRemoteDataSource());
    sl.registerLazySingleton<BaseStadiumRemoteDataSource>(
        () => StadiumRemoteDataSource());

    sl.registerLazySingleton<BaseArchiveRemoteDataSource>(
        () => ArchiveRemoteDataSource());
  }
}
