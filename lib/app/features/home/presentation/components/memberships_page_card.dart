import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport/core/constance/app_constance.dart';
import 'package:x_sport/core/utils/assets_managers/assets.gen.dart';

class MembershipsPageCard extends StatelessWidget {
  final String status;
  const MembershipsPageCard({
    super.key,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Card(
        surfaceTintColor: XColors.white,
        elevation: 5,
        shadowColor: XColors.shadow_color,
        margin: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 28),
        color: XColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(9.0),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 10,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'اسم الأكاديمية',
                      style: TextStyle(
                        color: XColors.black,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Text(
                      'اسم الكورس',
                      style: TextStyle(
                        color: XColors.black,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 10.w),
                          child: const Text(
                            'حتى 12/3/2024',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: XColors.black,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 4.w),
                          child: const Text(
                            'من 12/3/2024',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: XColors.black,
                            ),
                          ),
                        ),
                        const Icon(
                          Icons.calendar_month,
                          color: XColors.black,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    const Text(
                      'المشترك: أنت',
                      style: TextStyle(
                        color: XColors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Text.rich(
                      TextSpan(
                        style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                        children: [
                          const TextSpan(text: 'حالة الاشتراك: '),
                          TextSpan(
                            text: '$status ',
                            style: TextStyle(
                              color: status == 'سارية'
                                  ? XColors.success_green
                                  : XColors.fail_red,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: AssetsManager.images.academy.academy.image(
                width: 120.w,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
