import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:x_sport/app/features/auth/presentation/pages/welcome_page.dart';

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
          return const Offstage();
        },
        checkUserLogged: (value) {
          print("value.userAuthState ${value.userAuthState}");
          if (value.userAuthState == UserAuthState.loggedIn) {
            return const MainPage();
          } else if (value.userAuthState == UserAuthState.welcome) {
            return const WelcomePage();
          } else {
            return const LoginPage();
          }
        },
      );
    });
  }
}
