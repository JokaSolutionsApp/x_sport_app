import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport/app/features/home/presentation/components/memberships_banner.dart';

import '../../../academy/domain/enitites/params/acedemy_params.dart';
import '../../../academy/presentation/bloc/academy_bloc.dart';
import '../components/academies_components/academies_component.dart';

import '../components/academies_components/suggested_academies_component.dart';
import '../../../profile/presentation/components/profile_screen_components/profile_main_components/profile_appbar_component.dart';
import '../components/academies_components/academies_categories_component.dart';

class AcademiesPage extends StatefulWidget {
  const AcademiesPage({super.key});

  @override
  State<AcademiesPage> createState() => _AcademiesPageState();
}

class _AcademiesPageState extends State<AcademiesPage> {
  final TextEditingController search = TextEditingController();

  @override
  void initState() {
    super.initState();
    // context.read<AcademyBloc>().add(AcademyEvent.getSuggestedAcademies(
    //     params: SuggestedAcademyParams(pageSize: 1, pageNumber: 1)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ProfileAppBarComponent(
        isProfile: true,
      ),
      body: Column(
        children: [
          const MembershipsBanner(),
          AcademeiesCategoriesComponent(),
          SizedBox(height: 26.h),
          const SuggestedAcademiesComponent(),
          SizedBox(height: 12.h),
          const Expanded(
            child: AcademiesComponent(),
          ),
        ],
      ),
    );
  }
}
