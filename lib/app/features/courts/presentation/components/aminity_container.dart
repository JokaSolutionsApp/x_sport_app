import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport/core/constance/app_constance.dart';

class AminityContainer extends StatelessWidget {
  final String title;
  final Widget icon;
  const AminityContainer({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.w),
      child: Container(
        decoration: BoxDecoration(
          color: XColors.primary,
          borderRadius: BorderRadius.circular(41.r),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 12.w,
          vertical: 6.h,
        ),
        child: Row(
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 10.sp,
                color: XColors.white,
              ),
            ),
            SizedBox(
              width: 2.w,
            ),
            icon,
          ],
        ),
      ),
    );
  }
}
