import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport/app/features/academy/presentation/pages/all_academies_page.dart';
import 'package:x_sport/main.dart';

import '../../../../../../core/constance/app_constance.dart';

class SuggestedAcademiesComponent extends StatelessWidget {
  final int currentSport;
  const SuggestedAcademiesComponent({super.key, required this.currentSport});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.04.sw),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: Size(50.w, 30.h),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    alignment: Alignment.centerLeft),
                onPressed: () {
                  Navigator.of(navigatorKey.currentContext!).push(
                    MaterialPageRoute(
                        builder: (context) => const AllAcademiesPage()),
                  );
                },
                child: Text(
                  'عرض الكل',
                  style: TextStyle(
                    color: XColors.primary,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Text(
                'اكاديميات مقترحة',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
            ],
          ),
          Text(
            'حول هوايتك الى مستوى من الاحتراف',
            style: TextStyle(
              color: const Color(0xFF5C5C5C),
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
        ],
      ),
    );
  }
}
