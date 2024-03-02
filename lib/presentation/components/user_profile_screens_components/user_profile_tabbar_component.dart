import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_sport/core/constance/app_constance.dart';
import 'package:x_sport/presentation/components/user_profile_screens_components/user_profile_information_tab.dart';

class UserProfileTabBarComponent extends StatefulWidget {
  const UserProfileTabBarComponent({super.key});

  @override
  State<UserProfileTabBarComponent> createState() =>
      _UserProfileTabBarComponentState();
}

class _UserProfileTabBarComponentState extends State<UserProfileTabBarComponent>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 20.w),
          height: 54.h,
          width: 0.9.sw,
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xFFD1D1D1), width: 0.5),
            color: Colors.white,
            borderRadius: BorderRadius.circular(32.sp),
          ),
          child: TabBar(
            dividerColor: Colors.transparent,
            controller: _tabController,
            labelPadding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 20.w),
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(32.sp),
                color: XColors.Submit_Button_Color),
            labelStyle: GoogleFonts.tajawal(
                color: Colors.white,
                fontSize: 18.sp,
                fontWeight: FontWeight.w400),
            unselectedLabelStyle: TextStyle(
              color: Color(0xFF8F8F8F),
            ),
            tabs: [
              Container(
                height: 30.w,
                alignment: Alignment.center,
                child: Text(
                  'المجتمع',
                  style: GoogleFonts.tajawal(
                      fontSize: 16.sp, fontWeight: FontWeight.w400),
                ),
              ),
              Container(
                height: 30.w,
                alignment: Alignment.center,
                child: Text(
                  'معلومات',
                  style: GoogleFonts.tajawal(
                      fontSize: 18.sp, fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 409,
          child: TabBarView(controller: _tabController, children: [
            UserProfileInformationTab(),
            UserProfileInformationTab(),
          ]),
        ),
      ],
    );
  }
}
