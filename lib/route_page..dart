import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'app/features/auth/presentation/bloc/auth_bloc.dart';
import 'app/features/auth/presentation/pages/register_page.dart';

class RoutePage extends StatelessWidget {
  const RoutePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(builder: (context, state) {
      return const RegisterPage();
      // if (state.userAuthState == UserAuthState.loggedIn) {
      //   return MainPage();
      // } else if (state.userAuthState == UserAuthState.guest) {
      //   return RegisterPage();
      // } else {
      //   return Center();
      // }
    });
  }
}
