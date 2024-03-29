import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/constance/app_constance.dart';
import 'user_profile_information_tab.dart';

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
            border: Border.all(color: const Color(0xFFD1D1D1), width: 0.5),
            color: Colors.white,
            borderRadius: BorderRadius.circular(32.sp),
          ),
          child: TabBar(
            dividerColor: Colors.transparent,
            controller: _tabController,
            labelPadding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 20.w),
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(32.sp),
                color: XColors.primary),
            labelStyle: TextStyle(
                color: Colors.white,
                fontSize: 18.sp,
                fontWeight: FontWeight.w400),
            unselectedLabelStyle: const TextStyle(
              color: Color(0xFF8F8F8F),
            ),
            tabs: [
              Container(
                height: 30.w,
                alignment: Alignment.center,
                child: Text(
                  'المجتمع',
                  style:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400),
                ),
              ),
              Container(
                height: 30.w,
                alignment: Alignment.center,
                child: Text(
                  'معلومات',
                  style:
                      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w400),
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
