import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport/core/constance/app_constance.dart';
import 'package:x_sport/core/constance/app_functions.dart';
import 'package:x_sport/core/services/locator/service_locator.dart';
import 'package:x_sport/core/services/preload_images_service.dart';
import 'package:x_sport/firebase_options.dart';
import 'package:x_sport/app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:x_sport/presentation/controllers/chat_bloc/chat_bloc.dart';
import 'package:x_sport/route_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  ServiceLocator.init();
  EasyLoadingInit.configLoading();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    sl<ImagePreloadingService>().preloadImages(context);
    return ScreenUtilInit(
        designSize: const Size(430, 932),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => sl<AuthBloc>()
                  ..add(const AuthEvent.checkUserLogged())
                  ..add(const AuthEvent.getUserProfile())
                  ..add(const AuthEvent.getSports()),
              ),
              BlocProvider(create: (context) => sl<ChatBloc>()),
            ],
            child: MaterialApp(
              navigatorKey: navigatorKey,
              builder: EasyLoading.init(),
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                fontFamily: XStrings.fontFamily,
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
            ),
          );
        });
  }
}
