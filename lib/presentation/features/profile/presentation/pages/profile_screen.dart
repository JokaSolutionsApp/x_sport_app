import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport/core/utils/enums.dart';
import 'package:x_sport/presentation/features/auth/presentation/bloc/auth_bloc.dart';

import '../../../../components/profile_screen_components/profile_main_components/profile_appbar_component.dart';
import '../../../../components/profile_screen_components/profile_main_components/profile_drawer_component.dart';
import '../../../../components/profile_screen_components/profile_main_components/profile_info_component.dart';
import '../../../../components/profile_screen_components/profile_main_components/profile_stats_component.dart';
import '../../../../components/profile_screen_components/profile_main_components/profile_tabbar_component.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: ProfileDrawerComponent(),
      appBar: ProfileAppBarComponent(),
      body: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          return SizedBox();
          //   if (state.requestState == RequestState.loaded ||
          //       state.requestState == RequestState.loading ||
          //       state.requestState == RequestState.error) {
          //     final user = state.userSignIn!.user;
          //     final acadmiesPoints = state.userSignIn!.acadmiesPoints;
          //     final matchesCount = state.userSignIn!.matchesCount;
          //     final followers = state.userSignIn!.followers;
          //     final favoriteSports = state.userSignIn!.favoritSports;
          //     return SingleChildScrollView(
          //       child: Center(
          //         child: SizedBox(
          //           width: 385.w,
          //           child: Column(children: [
          //             SizedBox(height: 12.w),
          //             ProfileInfoComponent(
          //               user: user,
          //               points: acadmiesPoints,
          //               favoriteSports: favoriteSports,
          //             ),
          //             ProfileStatsComponent(
          //               followers: followers,
          //               matchesCount: matchesCount,
          //             ),
          //             ProfileTabBarComponent(
          //               favoritSports: favoriteSports,
          //             ),
          //           ]),
          //         ),
          //       ),
          //     );
          //   } else if (state.requestState == RequestState.loading) {
          //     return Center(
          //       child: CircularProgressIndicator(),
          //     );
          //   } else {
          //     return Center();
          //   }
          // },
        },
      ),
    );
  }
}
