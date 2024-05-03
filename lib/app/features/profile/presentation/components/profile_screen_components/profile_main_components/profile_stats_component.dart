import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/constance/app_constance.dart';

class ProfileStatsComponent extends StatelessWidget {
  final int? followers;
  final int? following;
  final int? matchesCount;
  const ProfileStatsComponent(
      {super.key,
      required this.followers,
      required this.matchesCount,
      required this.following});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 28.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Text(
                'المتابعين',
                style: TextStyle(
                    color: XColors.grey2,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                followers.toString(),
                style: TextStyle(
                    color: XColors.grey2,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Container(
            color: XColors.grey,
            width: 0.3.w,
            height: 40.h,
          ),
          Column(
            children: [
              Text(
                'المتابعون',
                style: TextStyle(
                    color: XColors.grey2,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                followers.toString(),
                style: TextStyle(
                    color: XColors.grey2,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
