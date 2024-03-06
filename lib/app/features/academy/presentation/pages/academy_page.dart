import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:x_sport/core/constance/app_constance.dart';
import 'package:x_sport/core/utils/assets_managers/assets.gen.dart';
import 'package:x_sport/app/features/academy/presentation/components/academy_components/academy_tabs_components/academy_program_component.dart';
import 'package:x_sport/app/widgets/buttons/submit_button.dart';

import '../components/academy_components/academy_tabs_components/academy_about_component.dart';

class AcademyPage extends StatefulWidget {
  const AcademyPage({super.key});

  @override
  State<AcademyPage> createState() => _AcademyScreenState();
}

class _AcademyScreenState extends State<AcademyPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this, initialIndex: 2);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 0.06.sh,
        backgroundColor: Colors.black,
        flexibleSpace: Container(
          alignment: Alignment.bottomCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Row(
                  children: [
                    const Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                    ),
                    Text(
                      'اسم الاكاديمية',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.ios_share_rounded,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.person_add,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 10.w, right: 20.w),
              height: 0.23.sh,
              decoration: BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.cover,
                image:
                    AssetsManager.images.academy.academyExample.image().image,
              )),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'مشاهدة الفيديو',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '1:47',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5.w),
                    height: 50.h,
                    width: 50.w,
                    decoration: BoxDecoration(
                        color: XColors.Submit_Button_Color.withOpacity(0.52),
                        shape: BoxShape.circle),
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.white.withOpacity(0.52),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 5.w),
                    height: 70.h,
                    width: 0.9.sw,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color(0xFFE6E6E6), width: 0.5.w),
                        borderRadius: BorderRadius.circular(22.sp)),
                    child: TabBar(
                      labelPadding: const EdgeInsets.symmetric(horizontal: 6),
                      splashBorderRadius: BorderRadius.circular(11.sp),
                      unselectedLabelColor: const Color(0xFFB4B4B4),
                      indicatorSize: TabBarIndicatorSize.label,
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
                          color: XColors.Submit_Button_Color,
                          borderRadius: BorderRadius.circular(11.sp)),
                      controller: _tabController,
                      tabs: [
                        Container(
                          height: 30.w,
                          alignment: Alignment.center,
                          child: Text(
                            "مراجعات",
                            style: TextStyle(
                                fontSize: 12.sp, fontWeight: FontWeight.w700),
                          ),
                        ),
                        Container(
                          height: 30.w,
                          alignment: Alignment.center,
                          child: Text(
                            "برامج التدريب",
                            style: TextStyle(
                                fontSize: 12.sp, fontWeight: FontWeight.w700),
                          ),
                        ),
                        Container(
                          height: 30.w,
                          alignment: Alignment.center,
                          child: Text(
                            "حول",
                            style: TextStyle(
                                fontSize: 12.sp, fontWeight: FontWeight.w700),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 0.49.sh,
                    child: TabBarView(controller: _tabController, children: [
                      const Text('data'),
                      const AcademyProgramtComponent(),
                      AcademyAboutComponent(),
                    ]),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: SubmitButton(
                        minWidth: 190.w,
                        text: 'سجل الان',
                        height: 54.w,
                        textSize: 15,
                        fillColor: XColors.Submit_Button_Color,
                        radius: 6,
                        onPressed: () {}),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
