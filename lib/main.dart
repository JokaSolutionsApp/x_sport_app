import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport/app/features/courts/domain/enitites/params/stadium_params.dart';
import 'package:x_sport/app/features/courts/presentation/bloc/stadium_bloc.dart';
import 'package:x_sport/route_page.dart';
import 'app/features/academy/presentation/bloc/academy_bloc.dart';
import 'app/features/auth/presentation/bloc/auth_bloc.dart';
import 'core/constance/app_constance.dart';
import 'core/constance/app_functions.dart';
import 'core/services/locator/service_locator.dart';
import 'core/services/preload_images_service.dart';
import 'core/services/secure_storage_service.dart.dart';
import 'firebase_options.dart';
import 'presentation/controllers/chat_bloc/chat_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  ServiceLocator.init();
  EasyLoadingInit.configLoading();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  final token = await sl<SecureStorageService>().read('token');
  print("mytoken $token");

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
                ..add(const AuthEvent.checkAccountStatus())
                ..add(const AuthEvent.getSports())
                ..add(const AuthEvent.getUserProfile()),
            ),
            BlocProvider(create: (context) => sl<AcademyBloc>()),
            BlocProvider(create: (context) => sl<ChatBloc>()),
            BlocProvider(
              create: (context) => sl<StadiumBloc>()
                ..add(
                  StadiumEvent.getFriendsStadiums(
                      params:
                          StadiumPrams(pageNum: 1, pageSize: 10, sportId: 1)),
                )
                ..add(
                  StadiumEvent.getNearByStadiums(
                      params:
                          StadiumPrams(pageNum: 1, pageSize: 10, sportId: 1)),
                ),
            ),
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
      },
    );
  }
}
