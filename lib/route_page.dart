import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:x_sport/app/features/auth/presentation/pages/welcome_page.dart';
import 'package:x_sport/core/services/locator/service_locator.dart';
import 'package:x_sport/core/services/secure_storage_service.dart.dart';
import 'app/features/auth/presentation/bloc/auth_bloc.dart';
import 'app/features/auth/presentation/pages/login_page.dart';
import 'app/features/home/presentation/pages/main_page.dart';
import 'core/utils/enums.dart';

class RoutePage extends StatelessWidget {
  const RoutePage({super.key});

  @override
  Widget build(BuildContext context) {
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
            return MainPage();
          } else if (value.userAuthState == UserAuthState.welcome) {
            return WelcomePage();
          } else {
            return LoginPage();
          }
        },
      );
    });
  }
}
