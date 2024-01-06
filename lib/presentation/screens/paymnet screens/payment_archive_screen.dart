import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_sport/core/constance/app_constance.dart';
import 'package:x_sport/presentation/components/payment_info_components/payment_history_component.dart';
import 'package:x_sport/presentation/widgets/buttons/submit_button.dart';
import 'package:x_sport/presentation/widgets/rectangle_container.dart';

import '../../controllers/fileds_bloc.dart';
import '../../widgets/buttons/custom_radio_button.dart';
import '../../widgets/text_fields/add_payment_field.dart';
import '../../widgets/text_fields/credit_text_field.dart';

class PaymentArchiveScreen extends StatelessWidget {
  PaymentArchiveScreen({super.key});

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
                  onTap: () {},
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
                  'الارشيف',
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
                  Container(
                    alignment: Alignment.centerRight,
                    height: 59.w,
                    width: 375.w,
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    margin: EdgeInsets.only(bottom: 18.h),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border:
                            Border.all(color: Color(0xFFDDDDDD), width: 0.5.w),
                        borderRadius: BorderRadius.circular(6.sp)),
                    child: Text(
                      'ارشيف المباريات الملعوبة',
                      style: GoogleFonts.tajawal(
                          color: Colors.black,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500),
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
                        border:
                            Border.all(color: Color(0xFFDDDDDD), width: 0.5.w),
                        borderRadius: BorderRadius.circular(6.sp)),
                    child: Text(
                      'ارشيف البطولات',
                      style: GoogleFonts.tajawal(
                          color: Colors.black,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500),
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
                        border:
                            Border.all(color: Color(0xFFDDDDDD), width: 0.5.w),
                        borderRadius: BorderRadius.circular(6.sp)),
                    child: Text(
                      'ارشيف الاكاديميات',
                      style: GoogleFonts.tajawal(
                          color: Colors.black,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500),
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
                        border:
                            Border.all(color: Color(0xFFDDDDDD), width: 0.5.w),
                        borderRadius: BorderRadius.circular(6.sp)),
                    child: Text(
                      'ارشيف القصص',
                      style: GoogleFonts.tajawal(
                          color: Colors.black,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500),
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
                        border:
                            Border.all(color: Color(0xFFDDDDDD), width: 0.5.w),
                        borderRadius: BorderRadius.circular(6.sp)),
                    child: Text(
                      'ارشيف المجتمع والمنشورات',
                      style: GoogleFonts.tajawal(
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
    );
  }
}
