import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport/app/features/archives/presentation/bloc/archive_bloc.dart';
import 'package:x_sport/core/app_manager/app_manager_cubit.dart';
import 'package:x_sport/core/app_manager/app_manager_state.dart';
import 'package:x_sport/core/localization/localization_config.dart';
import 'package:x_sport/core/services/secure_storage_service.dart.dart';
import 'package:x_sport/route_page.dart';

import 'app/features/academy/presentation/bloc/academy_bloc.dart';
import 'app/features/auth/presentation/bloc/auth_bloc.dart';
import 'app/features/courts/domain/enitites/params/stadium_params.dart';
import 'app/features/courts/presentation/bloc/stadium_bloc.dart';
import 'app/features/match/presentation/bloc/match_reservation_bloc.dart';
import 'core/constance/app_functions.dart';
import 'core/services/locator/service_locator.dart';
import 'core/services/preload_images_service.dart';
import 'firebase_options.dart';
import 'presentation/controllers/chat_bloc/chat_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  ServiceLocator.init();
  EasyLoadingInit.configLoading();
  await EasyLocalization.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final token = await sl<SecureStorageService>().read('token');
  if (kDebugMode) {
    print("mytoken $token");
  }

  runApp(
    EasyLocalization(
      supportedLocales: LocalizationConfig.supportedLocales,
      path: LocalizationConfig.path,
      fallbackLocale: LocalizationConfig.fallbackLocale,
      child: BlocProvider(
        create: (context) => AppManagerCubit()..loadLanguage(),
        child: const MyApp(),
      ),
    ),
  );
}

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    sl<ImagePreloadingService>().preloadImages(context);
    context.read<AppManagerCubit>().switchLanguage(const Locale('en'));

    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return BlocBuilder<AppManagerCubit, AppManagerState>(
          builder: (context, state) {
            String fontFamily = 'Vazirmatn'; // default font family
            if (state is LanguageLoaded) {
              fontFamily = state.fontFamily;
            }

            return MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (context) => sl<AuthBloc>()
                    ..add(const AuthEvent.checkAccountStatus())
                    ..add(const AuthEvent.getSports())
                    ..add(const AuthEvent.getUserProfile()),
                ),
                BlocProvider(create: (context) => sl<AcademyBloc>()),
                BlocProvider(create: (context) => sl<ChatBloc>()),
                BlocProvider(create: (context) => sl<ArchiveBloc>()),
                BlocProvider(create: (context) => sl<MatchReservationBloc>()),
                BlocProvider(
                  create: (context) => sl<StadiumBloc>()
                    ..add(
                      StadiumEvent.getFriendsStadiums(
                        params:
                            StadiumPrams(pageNum: 1, pageSize: 1, sportId: 1),
                      ),
                    )
                    ..add(
                      StadiumEvent.getNearByStadiums(
                        params:
                            StadiumPrams(pageNum: 1, pageSize: 1, sportId: 1),
                      ),
                    ),
                ),
              ],
              child: MaterialApp(
                navigatorKey: navigatorKey,
                builder: EasyLoading.init(),
                debugShowCheckedModeBanner: false,
                theme: ThemeData(
                  fontFamily: fontFamily,
                  dialogTheme: const DialogTheme(
                    surfaceTintColor: Colors.white,
                    backgroundColor: Colors.white,
                  ),
                  colorScheme: ColorScheme.fromSeed(
                    seedColor: const Color(0xFFF6F7F9),
                    secondary: const Color(0xFFF6F7F9),
                  ),
                  useMaterial3: true,
                ),
                home: const RoutePage(),
                localizationsDelegates: context.localizationDelegates,
                supportedLocales: context.supportedLocales,
                locale: context.locale,
              ),
            );
          },
        );
      },
    );
  }
}
