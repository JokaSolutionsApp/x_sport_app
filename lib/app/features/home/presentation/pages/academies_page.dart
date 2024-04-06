import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport/app/features/home/presentation/components/filter_widget.dart';
import 'package:x_sport/app/features/home/presentation/components/memberships_banner.dart';
import '../../../profile/presentation/components/profile_screen_components/profile_main_components/profile_appbar_component.dart';
import '../components/academies_components/academies_categories_component.dart';
import '../components/academies_components/academies_component.dart';
import '../components/academies_components/suggested_academies_component.dart';

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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const MembershipsBanner(),
                  AcademeiesCategoriesComponent(),
                ],
              ),
            ),
            SizedBox(height: 26.h),
            const SuggestedAcademiesComponent(),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 27.w,
                vertical: 5.h,
              ),
              child: const FilterWidget(),
            ),
            SizedBox(height: 12.h),
            const AcademiesComponent(),
          ],
        ),
      ),
    );
  }
}
