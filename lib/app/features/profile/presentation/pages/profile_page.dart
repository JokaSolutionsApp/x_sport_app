import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../auth/domain/enitites/user_profile_entity.dart';
import '../../../auth/presentation/bloc/auth_bloc.dart';
import '../components/profile_screen_components/profile_main_components/profile_appbar_component.dart';
import '../components/profile_screen_components/profile_main_components/profile_drawer_component.dart';
import '../components/profile_screen_components/profile_main_components/profile_info_component.dart';
import '../components/profile_screen_components/profile_main_components/profile_stats_component.dart';
import '../components/profile_screen_components/profile_main_components/profile_tabbar_component.dart';
import 'edit_profile_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: ProfileDrawerComponent(),
      appBar: const ProfileAppBarComponent(),
      body: SingleChildScrollView(
          child: Center(
        child: SizedBox(
          width: 385.w,
          child: Column(children: [
            SizedBox(height: 12.w),
            ProfileInfoComponent(
              points: 200,
            ),
            ProfileTabBarComponent(),
          ]),
        ),
      )),
    );
  }
}
