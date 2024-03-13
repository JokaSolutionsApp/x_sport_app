import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'comments_log_page.dart';
import 'likes_log_page.dart';
import 'search_log_page.dart';

class AllLogsPage extends StatelessWidget {
  const AllLogsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3FAFF),
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
                  'الأنشطة',
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LikesLogPage()));
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
                        'تسجيلات الاعجاب',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CommentsLogPage()));
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
                        'التعليقات',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
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
                        'الحجوزات',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SearchLogPage()));
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
                        'البحث',
                        style: TextStyle(
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
