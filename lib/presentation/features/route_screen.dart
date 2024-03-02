import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:x_sport/presentation/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:x_sport/presentation/features/auth/presentation/pages/register_page.dart';

class RouteScreen extends StatelessWidget {
  const RouteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(builder: (context, state) {
      return RegisterPage();
      // if (state.userAuthState == UserAuthState.loggedIn) {
      //   return MainScreen();
      // } else if (state.userAuthState == UserAuthState.guest) {
      //   return RegisterPage();
      // } else {
      //   return Center();
      // }
    });
  }
}
