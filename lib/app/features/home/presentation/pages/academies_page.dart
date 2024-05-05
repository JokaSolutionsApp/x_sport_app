import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport/app/features/academy/domain/enitites/params/acedemy_params.dart';
import 'package:x_sport/app/features/academy/presentation/bloc/academy_bloc.dart';
import 'package:x_sport/app/features/auth/domain/enitites/sport_entity.dart';
import 'package:x_sport/app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:x_sport/app/features/home/presentation/components/memberships_banner.dart';

import '../../../profile/presentation/components/profile_screen_components/profile_main_components/profile_appbar_component.dart';
import '../components/academies_components/academies_categories_component.dart';
import '../components/academies_components/academies_component.dart';

class AcademiesPage extends StatefulWidget {
  const AcademiesPage({super.key});

  @override
  State<AcademiesPage> createState() => _AcademiesPageState();
}

class _AcademiesPageState extends State<AcademiesPage> {
  final TextEditingController search = TextEditingController();
  late List<SportEntity> sports;

  @override
  void initState() {
    super.initState();
    sports = context.read<AuthBloc>().sports;
    context.read<AcademyBloc>().add(AcademyEvent.getSuggestedAcademies(
            params: SuggestedAcademyParams(
          pageSize: 1,
          pageNumber: 1,
          sportId: sports[1].sportId,
        )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ProfileAppBarComponent(
        isProfile: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10.w,
                vertical: 20.h,
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MembershipsBanner(),
                  AcademeiesCategoriesComponent(),
                ],
              ),
            ),
            // Padding(
            //   padding: EdgeInsets.symmetric(
            //     horizontal: 27.w,
            //     vertical: 5.h,
            //   ),
            //   child: const FilterWidget(),
            // ),
            const AcademiesComponent(),
          ],
        ),
      ),
    );
  }
}
