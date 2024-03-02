import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_sport/presentation/features/archives/presentation/pages/academies_archive_screen.dart';
import 'package:x_sport/presentation/features/archives/presentation/pages/played_games_archive_screen.dart';
import 'package:x_sport/presentation/features/archives/presentation/pages/stories_archive_screen.dart';
import 'package:x_sport/presentation/features/archives/presentation/pages/tournemets_archive_screen.dart';

class AllSettingsPrivacyScreen extends StatelessWidget {
  AllSettingsPrivacyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3FAFF),
      body: Center(
          child: Padding(
        padding: EdgeInsets.only(top: 45.w),
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
                      boxShadow: [BoxShadow()],
                      border:
                          Border.all(color: Color(0xFFD9D9D9), width: 0.5.w),
                      borderRadius: BorderRadius.circular(2.sp),
                    ),
                    child: Icon(
                      Icons.arrow_back_ios_outlined,
                      color: Color(0xFF595959),
                      size: 22.sp,
                    ),
                  ),
                ),
                Text(
                  'الاعدادات والخصوصية',
                  style: GoogleFonts.tajawal(
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
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) =>
                      //             PlayedGamesArchiveScreen()));
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
                              color: Color(0xFFDDDDDD), width: 0.5.w),
                          borderRadius: BorderRadius.circular(6.sp)),
                      child: Text(
                        'اللغة',
                        style: GoogleFonts.tajawal(
                            color: Colors.black,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) =>
                      //             TournementsArchiveScreen()));
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
                              color: Color(0xFFDDDDDD), width: 0.5.w),
                          borderRadius: BorderRadius.circular(6.sp)),
                      child: Text(
                        'الخصوصية',
                        style: GoogleFonts.tajawal(
                            color: Colors.black,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => AcademiesArchiveScreen()));
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
                              color: Color(0xFFDDDDDD), width: 0.5.w),
                          borderRadius: BorderRadius.circular(6.sp)),
                      child: Text(
                        'الموقع الجغرافي',
                        style: GoogleFonts.tajawal(
                            color: Colors.black,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
