import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/constance/app_constance.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: XColors.Background_Color1,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 18.0,
          vertical: 9.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.sports_soccer,
                      color: XColors.white,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        right: 4.w,
                      ),
                      child: const Text(
                        'اسم الكورس',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: XColors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                const Text(
                  'وصف بسيط من سطر او سطرين',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: XColors.white,
                  ),
                ),
                SizedBox(
                  height: 7.h,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.calendar_month,
                      color: XColors.white,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 4.w),
                      child: const Text(
                        'من 12/3/2024',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: XColors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10.w),
                      child: const Text(
                        'حتى 12/3/2024',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: XColors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16.h,
                ),
                Row(
                  children: [
                    const Text(
                      'تفاصيل',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: XColors.white,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        right: 4.w,
                      ),
                      child: const Icon(
                        Icons.arrow_outward,
                        color: XColors.white,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    right: 4.w,
                  ),
                  child: const Text(
                    'ذكور 7 U',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: XColors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50.h,
                ),
                const Text(
                  '\$ 49.99',
                  style: TextStyle(
                    height: 0.8,
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: XColors.white,
                  ),
                ),
                const Text(
                  'Total',
                  style: TextStyle(
                    height: 0.8,
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: XColors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
