import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'app/features/auth/presentation/bloc/auth_bloc.dart';
import 'app/features/auth/presentation/pages/login_page.dart';
import 'app/features/home/presentation/pages/main_page.dart';
import 'core/services/locator/service_locator.dart';
import 'core/services/secure_storage_service.dart.dart';
import 'core/utils/enums.dart';

class RoutePage extends StatelessWidget {
  const RoutePage({super.key});

  @override
  Widget build(BuildContext context) {
    sl<SecureStorageService>().write('email', 'ammarkseibati97@gmail.com');
    return BlocBuilder<AuthBloc, AuthState>(buildWhen: (prev, cur) {
      if (cur.runtimeType == const AuthState.checkUserLogged().runtimeType) {
        return true;
      }
      return false;
    }, builder: (context, state) {
      return state.maybeMap(
        orElse: () {
          return const MainPage();
        },
        checkUserLogged: (value) {
          if (value.userAuthState == UserAuthState.loggedIn) {
            return const MainPage();
          } else {
            return const LoginPage();
          }
        },
      );
    });
  }
}
