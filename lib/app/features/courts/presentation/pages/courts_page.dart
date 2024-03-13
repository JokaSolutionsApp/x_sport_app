import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/assets_managers/assets.gen.dart';

import '../../../academy/presentation/components/academy_components/academy_tabs_components/academy_program_component.dart';
import '../components/court_information_tab_component.dart';

class CourtsPage extends StatefulWidget {
  const CourtsPage({super.key});

  @override
  State<CourtsPage> createState() => _CourtsScreenState();
}

class _CourtsScreenState extends State<CourtsPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 2);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: 300.w,
            decoration: BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetsManager.images.courts.court.image().image,
            )),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(height: 38.w),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        height: 35.w,
                        width: 35.w,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.55),
                          borderRadius: BorderRadius.circular(6.sp),
                        ),
                        child: Icon(
                          Icons.arrow_back_ios_outlined,
                          color: Colors.black,
                          size: 22.sp,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 35.w,
                            width: 85.w,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.55),
                              borderRadius: BorderRadius.circular(6.sp),
                            ),
                            child: Text(
                              '+ تابع',
                              style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 18.w),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 35.w,
                            width: 35.w,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.55),
                              borderRadius: BorderRadius.circular(6.sp),
                            ),
                            child: Icon(
                              Icons.bookmark_outline,
                              color: Colors.black,
                              size: 28.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 70.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 18.w),
                      height: 35.w,
                      width: 100.w,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.65),
                        borderRadius: BorderRadius.circular(6.sp),
                      ),
                      child: Text(
                        '6521 متابع',
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Container(
                      height: 100.w,
                      width: 270.w,
                      padding: EdgeInsets.only(left: 20.w),
                      margin: EdgeInsets.only(right: 10.w),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.45),
                        borderRadius: BorderRadius.circular(6.sp),
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        clipBehavior: Clip.none,
                        children: List.generate(
                          4,
                          (index) => Positioned(
                            left: index *
                                40.0, // Adjust the spacing between circles
                            child: index != 3
                                ? Container(
                                    width: 100.w,
                                    height: 90.w,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                'assets/images/courts/court${index + 1}.png')),
                                        borderRadius:
                                            BorderRadius.circular(7.sp),
                                        border: Border.all(
                                          color: Colors.white.withOpacity(0.55),
                                        )),
                                  )
                                : Container(
                                    width: 100.w,
                                    height: 90.w,
                                    decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(0.65),
                                        borderRadius:
                                            BorderRadius.circular(6.sp),
                                        border: Border.all(
                                          color: Colors.white.withOpacity(0.5),
                                        )),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '+65',
                                          style: TextStyle(
                                            fontSize: 20.sp,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Text(
                                          'صورة',
                                          style: TextStyle(
                                            height: 0.5.w,
                                            fontSize: 12.sp,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                width: 1.sw,
                height: 660.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.sp),
                        topRight: Radius.circular(40.sp))),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: 20.w),
                        height: 50.h,
                        width: 0.9.sw,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12.sp),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 8,
                                offset: const Offset(0, 4),
                              )
                            ]),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            TabBar(
                              dividerColor: Colors.transparent,
                              controller: _tabController,
                              splashFactory: NoSplash.splashFactory,
                              overlayColor:
                                  MaterialStateProperty.resolveWith<Color?>(
                                (Set<MaterialState> states) {
                                  return states.contains(MaterialState.focused)
                                      ? null
                                      : const Color.fromARGB(0, 150, 89, 89);
                                },
                              ),
                              // indicatorSize: TabBarIndicatorSize.label,
                              // indicatorPadding:
                              //     EdgeInsets.symmetric(horizontal: 16.w),
                              // indicator: BoxDecoration(border: Border()),
                              labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w400),
                              indicatorColor: Colors.transparent,
                              unselectedLabelStyle: const TextStyle(
                                color: Color(0xFF8F8F8F),
                              ),
                              tabs: [
                                Container(
                                  height: 30.w,
                                  alignment: Alignment.center,
                                  child: Text(
                                    'المجتمع',
                                    style: TextStyle(
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                Container(
                                  height: 30.w,
                                  alignment: Alignment.center,
                                  child: Text(
                                    'معلومات',
                                    style: TextStyle(
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: 0.5.w,
                              height: 38.w,
                              color: const Color(0xFF989898),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Expanded(
                        child:
                            TabBarView(controller: _tabController, children: [
                          const AcademyProgramtComponent(),
                          CourtInformationComponent(),
                        ]),
                      ),
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
