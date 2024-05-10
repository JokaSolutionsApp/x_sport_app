import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport/core/constance/app_icons_icons.dart';

import '../../../../../core/constance/app_constance.dart';

class ChampionshipCard extends StatelessWidget {
  const ChampionshipCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        width: 377.w,
        margin: const EdgeInsets.only(
          top: 18,
          bottom: 18,
          left: 27,
          right: 27,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 7,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10.0,
            horizontal: 8.0,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: SizedBox(
                      height: 52.w,
                      width: 52.w,
                      child: CircleAvatar(
                        radius: 52.sp,
                        backgroundColor: XColors.black,
                      ),
                    ),
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'اسم البطولة',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'الجهة المنظمة اسم الملعب\\ الاكاديمية',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        GestureDetector(
                          child: Icon(
                            AppIcons.calender,
                            size: 26.sp,
                            color: const Color(0xFF727272),
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Text(
                          'البدء:',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'السبت 9/11/2023',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Text(
                          'الانتهاء:',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'الخميس 9/11/2023',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 13,
              ),
              Row(
                children: [
                  const Expanded(
                    child: Text(
                      'الانضمام للبطولة غير متاح',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: XColors.primary,
                      ),
                    ),
                  ),
                  // TextButtonWidget(
                  //   buttonWidth: 125.w,
                  //   borderRadius: 3.sp,
                  //   text: 'عرض المزيد',
                  //   textStyle: TextStyle(
                  //     color: XColors.white,
                  //     fontSize: 10,
                  //     fontWeight: FontWeight.w500,
                  //   ),
                  //   onPressed: () {},
                  // )
                  SizedBox(
                    height: 26.h,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: XColors.primary,
                        foregroundColor: XColors.white,
                        shape: const RoundedRectangleBorder(),
                      ),
                      child: const Text(
                        'عرض المزيد',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
