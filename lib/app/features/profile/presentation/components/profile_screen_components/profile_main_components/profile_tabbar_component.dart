import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport/app/features/auth/domain/enitites/user_profile_entity.dart';
import 'package:x_sport/core/constance/app_constance.dart';
import 'package:x_sport/app/widgets/rectangle_container.dart';
import '../../../../../../widgets/buttons/submit_button.dart';
import '../profile_tabbar_components/profile_activities_component.dart';
import '../profile_tabbar_components/profile_society_component.dart';

class ProfileTabBarComponent extends StatefulWidget {
  final UserProfileEntity userProfile;
  const ProfileTabBarComponent({super.key, required this.userProfile});

  @override
  State<ProfileTabBarComponent> createState() => _ProfileTabBarComponentState();
}

class _ProfileTabBarComponentState extends State<ProfileTabBarComponent>
    with SingleTickerProviderStateMixin {
  late TabController tabBar;
  final ValueNotifier<int> selectedIndex = ValueNotifier<int>(0);

  List<String> items = [
    'تنس',
    'بادل',
  ];
  List<Map<String, dynamic>> levels = [
    {
      'points': '5000 xp points',
      'level': 'متمرس',
    },
    {
      'points': '3000 xp points',
      'level': 'هاو',
    },
    {
      'points': '1000 xp points',
      'level': 'مبتدئ',
    }
  ];
  List<Map<String, dynamic>> prefernces = [
    {
      'title': 'اليد المفضلة',
      'image': 'hand.png',
    },
    {
      'title': 'المركز المفضل',
      'image': 'position.png',
    },
    {
      'title': 'الوقت المفضل ل اللعب',
      'image': 'time.png',
    }
  ];
  final ValueNotifier<String?> selectedValue = ValueNotifier<String?>(null);

  @override
  void initState() {
    tabBar = TabController(vsync: this, length: 2);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RectangleContainer(
          bottomMargin: 10,
          radius: 24,
          height: 60.h,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w),
            child: TabBar(
                indicatorPadding:
                    EdgeInsets.symmetric(horizontal: 12.w, vertical: 5.h),
                splashBorderRadius: BorderRadius.circular(11.sp),
                unselectedLabelColor: const Color(0xFFB4B4B4),
                indicatorSize: TabBarIndicatorSize.tab,
                splashFactory: NoSplash.splashFactory,
                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                    return states.contains(MaterialState.focused)
                        ? null
                        : Colors.transparent;
                  },
                ),
                labelStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700),
                unselectedLabelStyle: TextStyle(
                    color: const Color(0xFFB4B4B4),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700),
                dividerColor: Colors.transparent,
                indicator: BoxDecoration(
                    color: XColors.primary,
                    borderRadius: BorderRadius.circular(24.sp)),
                controller: tabBar,
                tabs: const [
                  Tab(
                    text: 'المجتمع',
                  ),
                  Tab(
                    text: 'الانشطة',
                  ),
                ]),
          ),
        ),
        SizedBox(height: 0.021.sh),
        SizedBox(
          height: 0.68.sh,
          child: TabBarView(controller: tabBar, children: [
            const ProfileSocietyComponent(),
            SingleChildScrollView(
              child: Column(
                children: [
                  ProfileActivitiesComponent(
                      userProfile: widget.userProfile,
                      favoritSports: widget.userProfile.favoriteSports),
                  DottedBorder(
                      borderType: BorderType.RRect,
                      radius: Radius.circular(12.sp),
                      strokeWidth: 1.4.w,
                      dashPattern: [10.w, 9],
                      color: const Color(0xFF3D3D3D),
                      child: SizedBox(
                        width: 1.sw,
                        height: 230.h,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'انشئ مجتمعك المصغر',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20.sp,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              width: 0.56.sw,
                              child: Text(
                                'قم بانشاء مجموعة من اصدقائك اللاعبين المتعطشين للمنافسة',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18.sp,
                                    color: const Color(0xFF4B4B4B)),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SubmitButton(
                                radius: 7,
                                height: 49,
                                minWidth: 220,
                                fillColor: XColors.primary,
                                text: 'مجموعة جديدة',
                                textSize: 19.sp,
                                onPressed: () {}),
                          ],
                        ),
                      )),
                  SizedBox(
                    height: 220.h,
                  )
                ],
              ),
            ),
          ]),
        ),
      ],
    );
  }
}
