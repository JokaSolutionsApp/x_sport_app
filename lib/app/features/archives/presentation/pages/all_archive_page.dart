import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport/main.dart';

import 'academies_archive_page.dart';
import 'played_games_archive_page.dart';
import 'stories_archive_page.dart';
import 'tournemets_archive_page.dart';

class AllArchivePage extends StatelessWidget {
  const AllArchivePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3FAFF),
      body: SafeArea(
        child: Center(
            child: Padding(
          padding: EdgeInsets.only(top: 0.h),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      height: 40.w,
                      width: 40.w,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: const [BoxShadow()],
                        border: Border.all(
                            color: const Color(0xFFD9D9D9), width: 0.5.w),
                        borderRadius: BorderRadius.circular(2.sp),
                      ),
                      child: Icon(
                        Icons.arrow_back_ios_outlined,
                        color: const Color(0xFF595959),
                        size: 22.sp,
                      ),
                    ),
                  ),
                  Text(
                    'الارشيف',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox.shrink()
                ],
              ),
              SizedBox(height: 45.w),
              SizedBox(
                width: 375.w,
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(navigatorKey.currentContext!).push(
                            MaterialPageRoute(
                                builder: (context) =>
                                    const PlayedGamesArchivePage()));
                      },
                      child: Container(
                        alignment: Alignment.centerRight,
                        height: 59.w,
                        width: 375.w,
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        margin: EdgeInsets.only(bottom: 18.h),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color: const Color(0xFFDDDDDD), width: 0.5.w),
                            borderRadius: BorderRadius.circular(6.sp)),
                        child: Text(
                          'ارشيف المباريات الملعوبة',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(navigatorKey.currentContext!).push(
                            MaterialPageRoute(
                                builder: (context) =>
                                    const TournementsArchivePage()));
                      },
                      child: Container(
                        alignment: Alignment.centerRight,
                        height: 59.w,
                        width: 375.w,
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        margin: EdgeInsets.only(bottom: 18.h),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color: const Color(0xFFDDDDDD), width: 0.5.w),
                            borderRadius: BorderRadius.circular(6.sp)),
                        child: Text(
                          'ارشيف البطولات',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(navigatorKey.currentContext!).push(
                            MaterialPageRoute(
                                builder: (context) =>
                                    const AcademiesArchivePage()));
                      },
                      child: Container(
                        alignment: Alignment.centerRight,
                        height: 59.w,
                        width: 375.w,
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        margin: EdgeInsets.only(bottom: 18.h),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color: const Color(0xFFDDDDDD), width: 0.5.w),
                            borderRadius: BorderRadius.circular(6.sp)),
                        child: Text(
                          'ارشيف الاكاديميات',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(navigatorKey.currentContext!).push(
                            MaterialPageRoute(
                                builder: (context) =>
                                    const StoriesArchivePage()));
                      },
                      child: Container(
                        alignment: Alignment.centerRight,
                        height: 59.w,
                        width: 375.w,
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        margin: EdgeInsets.only(bottom: 18.h),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color: const Color(0xFFDDDDDD), width: 0.5.w),
                            borderRadius: BorderRadius.circular(6.sp)),
                        child: Text(
                          'ارشيف القصص',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      height: 59.w,
                      width: 375.w,
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      margin: EdgeInsets.only(bottom: 18.h),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                              color: const Color(0xFFDDDDDD), width: 0.5.w),
                          borderRadius: BorderRadius.circular(6.sp)),
                      child: Text(
                        'ارشيف المجتمع والمنشورات',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
