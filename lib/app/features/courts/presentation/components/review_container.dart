import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport/core/constance/app_constance.dart';

class ReviewContainer extends StatelessWidget {
  const ReviewContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      child: Container(
        width: 0.5.sw,
        decoration: BoxDecoration(
          color: XColors.white,
          border: Border.all(
            color: XColors.secondary_text_color,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: const NetworkImage(
                          XStrings.sampleImage,
                        ),
                        radius: 20.r,
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      RatingBarIndicator(
                        rating: 3.5,
                        itemBuilder: (context, index) => const Icon(
                          Icons.star,
                          color: XColors.yellow,
                        ),
                        itemPadding: EdgeInsets.symmetric(
                          horizontal: 1.w,
                        ),
                        unratedColor: XColors.grey6,
                        itemCount: 5,
                        itemSize: 12.sp,
                        direction: Axis.horizontal,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 5.h),
              Row(
                children: [
                  Text(
                    'بشير التركماني',
                    style: TextStyle(
                      fontSize: 8.sp,
                    ),
                  ),
                  SizedBox(width: 4.w),
                  Text(
                    '(منذ يومين)',
                    style: TextStyle(
                      color: XColors.secondary_text_color,
                      fontSize: 6.sp,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 11.h),
              Text(
                'يظهر هنا نص التعليق يظهر هنا نص التعليق يظهر هنا نص التعليق يظهر هنا نص التعليق يظهر هنا نص التعليق يظهر هنا نص التعليق يظهر هنا نص التعليق',
                style: TextStyle(
                  fontSize: 8.sp,
                  fontWeight: FontWeight.w300,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
