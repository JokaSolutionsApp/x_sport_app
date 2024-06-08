import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:x_sport/app/features/auth/presentation/pages/complete_your_profile.dart';
import 'package:x_sport/app/features/auth/presentation/pages/create_or_signin.dart';
import 'package:x_sport/app/features/auth/presentation/pages/otp_page.dart';
import 'package:x_sport/app/features/auth/presentation/pages/welcome_page.dart';
import 'package:x_sport/app/features/paymnet/presentation/pages/payment_page.dart';

import 'app/features/auth/presentation/bloc/auth_bloc.dart';
import 'app/features/auth/presentation/pages/login_page.dart';
import 'app/features/auth/presentation/pages/otp_page.dart';
import 'app/features/auth/presentation/pages/welcome_page.dart';
import 'app/features/home/presentation/pages/main_page.dart';
import 'core/utils/enums.dart';

class RoutePage extends StatelessWidget {
  const RoutePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(buildWhen: (prev, cur) {
      print("value.userAuthState ${cur.runtimeType}");

      if (cur.runtimeType == const AuthState.checkAccountStatus().runtimeType) {
        return true;
      }

      return false;
    }, builder: (context, state) {
      return state.maybeMap(
        orElse: () {
          return const Offstage();
        },
        checkAccountStatus: (value) {
          if (value.userAuthState == UserAuthState.RegistrationFinished ||
              value.userAuthState == UserAuthState.profilePictureSkipped) {
            return const MainPage();
          } else if (value.userAuthState ==
                  UserAuthState.comletedRegistrationWithGoogle ||
              value.userAuthState ==
                  UserAuthState.registerWithEmailAndPassword) {
            return const WelcomePage();
          } else if (value.userAuthState == UserAuthState.registredWithGoogle) {
            return const CompleteProfilePage();
          } else if (value.userAuthState == UserAuthState.error) {
            return const CreateOrSignIn();
          } else {
            return const CreateOrSignIn();
          }
        },
      );
    });
  }
}
