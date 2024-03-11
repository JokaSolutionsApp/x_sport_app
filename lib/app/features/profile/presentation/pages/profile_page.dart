import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport/app/features/auth/domain/enitites/user_profile_entity.dart';
import 'package:x_sport/app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:x_sport/app/features/profile/presentation/components/profile_screen_components/profile_main_components/profile_appbar_component.dart';
import 'package:x_sport/app/features/profile/presentation/components/profile_screen_components/profile_main_components/profile_drawer_component.dart';
import 'package:x_sport/app/features/profile/presentation/components/profile_screen_components/profile_main_components/profile_info_component.dart';
import 'package:x_sport/app/features/profile/presentation/components/profile_screen_components/profile_main_components/profile_stats_component.dart';
import 'package:x_sport/app/features/profile/presentation/components/profile_screen_components/profile_main_components/profile_tabbar_component.dart';
import 'package:x_sport/app/features/profile/presentation/pages/edit_profile_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const ProfileDrawerComponent(),
      appBar: const ProfileAppBarComponent(),
      body: BlocBuilder<AuthBloc, AuthState>(
        buildWhen: (prev, cur) {
          if (cur.runtimeType !=
              const AuthState.userProfileLocalLoading().runtimeType) {
            return true;
          }
          return false;
        },
        builder: (context, state) {
          context.read<AuthBloc>().add(const AuthEvent.getUserProfile());

          return state.maybeMap(
            orElse: () => const Offstage(),
            userProfileFailure: (_) => const Offstage(),
            userProfileLocalLoading: (_) => const Offstage(),
            userProfileLoading: (_) =>
                const CircularProgressIndicator.adaptive(),
            userProfileFetched: (value) {
              UserProfileEntity user = value.userProfile!;
              return SingleChildScrollView(
                  child: Center(
                child: SizedBox(
                  width: 385.w,
                  child: Column(children: [
                    SizedBox(height: 12.w),
                    ProfileInfoComponent(
                      user: User(),
                      points: 200,
                      favoriteSports: const [],
                    ),
                    const ProfileStatsComponent(
                      followers: 0,
                      matchesCount: 0,
                    ),
                    const ProfileTabBarComponent(
                      favoritSports: [],
                    ),
                  ]),
                ),
              ));
            },
          );
        },
      ),
    );
  }
}
