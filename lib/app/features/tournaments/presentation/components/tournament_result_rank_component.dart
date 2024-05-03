import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constance/app_constance.dart';

class TournamentResultRankComponent extends StatelessWidget {
  TournamentResultRankComponent({super.key});
  final List<String> groups = [
    'المجموعة الاولى',
    'المجموعة الثانية',
    'المجموعة الثالثة',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 26.h, right: 13.w, bottom: 8.h),
                  child: Text(
                    groups[index],
                    style: TextStyle(
                        color: const Color(0xFF969696),
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12.w),
                  height: 45.h,
                  width: 1.sw,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: 0.45.sw,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'pts',
                              style: TextStyle(
                                  color: const Color(0xFF969696),
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'خسر',
                              style: TextStyle(
                                  color: const Color(0xFF969696),
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'فاز',
                              style: TextStyle(
                                  color: const Color(0xFF969696),
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'لعب',
                              style: TextStyle(
                                  color: const Color(0xFF969696),
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      Text(
                        'اسم اللاعب',
                        style: TextStyle(
                            color: const Color(0xFF969696),
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(width: 42.w),
                      Text(
                        '#',
                        style: TextStyle(
                            color: const Color(0xFF969696),
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 1.sw,
                  height: 0.22.sh,
                  child: ListView.builder(
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsets.symmetric(horizontal: 12.w),
                          height: 45.h,
                          width: 1.sw,
                          decoration: BoxDecoration(
                            color:
                                index % 2 == 0 ? XColors.primary : Colors.white,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(
                                width: 0.43.sw,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '9',
                                      style: TextStyle(
                                          color: index % 2 == 0
                                              ? Colors.white
                                              : Colors.black,
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      '1',
                                      style: TextStyle(
                                          color: index % 2 == 0
                                              ? Colors.white
                                              : Colors.black,
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      '3',
                                      style: TextStyle(
                                          color: index % 2 == 0
                                              ? Colors.white
                                              : Colors.black,
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      '4',
                                      style: TextStyle(
                                          color: index % 2 == 0
                                              ? Colors.white
                                              : Colors.black,
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                              const Spacer(),
                              Text(
                                '${index + 1}اللاعب',
                                style: TextStyle(
                                    color: index % 2 == 0
                                        ? Colors.white
                                        : Colors.black,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(width: 42.w),
                              Text(
                                '${index + 1}',
                                style: TextStyle(
                                    color: index % 2 == 0
                                        ? Colors.white
                                        : Colors.black,
                                    fontSize: 19.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        );
                      }),
                )
              ],
            );
          }),
    );
  }
}
