import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:x_sport/core/constance/app_constance.dart';

import '../../../../../core/constance/app_icons_icons.dart';
import '../../../../widgets/rectangle_container.dart';

class CourtInformationComponent extends StatelessWidget {
  CourtInformationComponent({super.key});

  final courtServices = [
    {
      'image': AppIcons.transport,
      'title': 'مواصلات \nمؤمنة',
    },
    {
      'image': AppIcons.meds,
      'title': 'عناية \nطبية',
    },
    {
      'image': AppIcons.access_time,
      'title': 'اوقات \nمرنة',
    },
    {
      'image': AppIcons.grass,
      'title': 'عشب \nطبيعي',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 0.07.sh,
          width: 0.9.sw,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '150-200 ريال سعودي',
                    style: TextStyle(
                        height: 2.w,
                        color: Colors.black,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'اسم الملعب',
                    style:
                        TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Icon(
                        Icons.timer_outlined,
                        color: XColors.primary,
                      ),
                      SizedBox(width: 4.w),
                      Text(
                        '8:00 AM - 11:00 PM',
                        style: TextStyle(
                            color: XColors.primary,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'الموقع الجغرافي',
                        style: TextStyle(
                            color: const Color(0xFF989898),
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w500),
                      ),
                      Icon(
                        Icons.location_pin,
                        color: const Color(0xFF989898),
                        size: 30.sp,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20.w),
          height: 0.13.sh,
          width: 0.9.sw,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        margin: EdgeInsets.symmetric(horizontal: 13.w),
                        alignment: Alignment.center,
                        height: 70.w,
                        width: 70.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9.sp),
                            color: const Color(0xFFECECFB),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  blurRadius: 12,
                                  offset: Offset(0, 4.w))
                            ]),
                        child: Icon(
                          courtServices[index]['image'] as IconData,
                          color: XColors.primary,
                        )),
                    Text(
                      courtServices[index]['title'].toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                );
              }),
        ),
        Container(
          margin: EdgeInsets.only(top: 10.h),
          alignment: Alignment.topRight,
          width: 0.82.sw,
          child: Text(
            'وصف عن الملعب من 5 اسطر الى 6\nوصف عن الملعب من 5 اسطر الى 6\nوصف عن الملعب من 5 اسطر الى 6\nوصف عن الملعب من 5 اسطر الى 6',
            textAlign: TextAlign.end,
            style: TextStyle(color: const Color(0xFF6C6C6C), fontSize: 15.sp),
          ),
        ),
        SizedBox(
          height: 20.w,
        ),
        RectangleContainer(
            bottomMargin: 10,
            radius: 13,
            child: Container(
              padding: EdgeInsets.only(right: 10.w),
              height: 100.h,
              width: 388.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 15.w),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 58.w,
                        width: 58.w,
                        decoration: BoxDecoration(
                            color: XColors.primary,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                  color: XColors.primary.withOpacity(0.65),
                                  blurRadius: 8,
                                  offset: Offset(0, 4.w))
                            ]),
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          size: 22.sp,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'احجز مباراة',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'قم باختيار موعد مناسب بسهولة \nونظم مباراتك التالية',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            color: const Color(0xFF6E6E6E),
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
            )),
        SizedBox(
          width: 388.w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 170.w,
                  height: 120.h,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        colors: [XColors.primary, Color(0xFF0B3B9B)],
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft),
                    borderRadius: BorderRadius.circular(9.sp),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.emoji_events,
                        color: Colors.white,
                        size: 50.sp,
                      ),
                      Text(
                        'البطولات',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 170.w,
                  height: 120.h,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        colors: [XColors.primary, Color(0xFF0B3B9B)],
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft),
                    borderRadius: BorderRadius.circular(9.sp),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.telegram_outlined,
                        color: Colors.white,
                        size: 50.sp,
                      ),
                      Text(
                        'الاكاديمية ',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
