import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport/core/constance/app_constance.dart';

class CourtHeader extends StatelessWidget {
  const CourtHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.w),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite,
                        color: XColors.secondary_text_color,
                      ),
                      iconSize: 25.sp,
                    ),
                    Text(
                      'Golden Court',
                      style: TextStyle(
                        fontSize: 18.sp,
                      ),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Text(
                      'شارع الشيخ زايد بجانب مول الشارقة',
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: XColors.secondary_text_color,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.add,
                    color: XColors.blue,
                    size: 12.sp,
                  ),
                  Text(
                    'متابعة',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: XColors.blue,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 21.h),
        ],
      ),
    );
  }
}
