import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport/app/features/courts/presentation/components/aminity_container.dart';
import 'package:x_sport/app/features/courts/presentation/components/review_container.dart';
import 'package:x_sport/app/widgets/buttons/app_elevated_button.dart';
import 'package:x_sport/app/widgets/buttons/app_outlined_button.dart';
import 'package:x_sport/core/constance/app_constance.dart';
import 'package:x_sport/core/utils/assets_managers/assets.gen.dart';

class CourtInfoTab extends StatelessWidget {
  const CourtInfoTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30.h),
          aminitiesList(),
          SizedBox(height: 30.h),
          courtInfo(context),
          reviewsList(),
        ],
      ),
    );
  }

  SizedBox aminitiesList() {
    return SizedBox(
      height: 40.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 100,
        itemBuilder: (context, index) => AminityContainer(
          title: 'تبديل الملابس',
          icon: Icon(
            Icons.coffee_outlined,
            color: XColors.white,
            size: 20.sp,
          ),
        ),
      ),
    );
  }

  Padding courtInfo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'معلومات الملعب',
            style: TextStyle(
              fontSize: 14.sp,
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            '3 أرضيات متاحة',
            style: TextStyle(
              fontSize: 12.sp,
              color: XColors.secondary_text_color,
            ),
          ),
          SizedBox(height: 16.h),
          Row(
            children: [
              AssetsManager.icons.clockThin.image(
                height: 20.w,
                width: 20.w,
              ),
              SizedBox(
                width: 5.w,
              ),
              Text(
                'أوقات العمل',
                style: TextStyle(
                  fontSize: 14.sp,
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          Text(
            'الاثنين - الجمعة (9:00 am - 1:00 am)',
            style: TextStyle(
              fontSize: 12.sp,
              color: XColors.secondary_text_color,
            ),
          ),
          SizedBox(height: 16.h),
          Row(
            children: [
              AssetsManager.icons.info.image(
                height: 20.w,
                width: 20.w,
              ),
              SizedBox(
                width: 5.w,
              ),
              Text(
                'معدل التقييم',
                style: TextStyle(
                  fontSize: 14.sp,
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          Row(
            children: [
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
                itemSize: 25.sp,
                direction: Axis.horizontal,
              ),
              SizedBox(
                width: 7.w,
              ),
              Text(
                '4.7 (2.8k)',
                style: TextStyle(
                  fontSize: 12.sp,
                  color: XColors.secondary_text_color,
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          AppOutlinedButton(
            onPressed: () => addReviewSheet(context),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'شارك تجربتك',
                  style: TextStyle(
                    color: XColors.secondary_text_color,
                    fontSize: 12.sp,
                  ),
                ),
                const Icon(
                  Icons.add,
                  color: XColors.secondary_text_color,
                ),
              ],
            ),
          ),
          SizedBox(height: 16.h),
          Text(
            'آراء اللاعبين',
            style: TextStyle(
              fontSize: 14.sp,
            ),
          ),
          SizedBox(height: 10.h),
        ],
      ),
    );
  }

  Future<dynamic> addReviewSheet(BuildContext context) {
    return showModalBottomSheet(
      backgroundColor: XColors.white,
      constraints: BoxConstraints(
        maxWidth: 0.9.sw,
      ),
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (BuildContext context) {
        return Padding(
          padding: EdgeInsets.symmetric(
            vertical: 16.h,
            horizontal: 34.w,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'شارك تجربتك',
                  style: TextStyle(
                    fontSize: 14.sp,
                  ),
                ),
                SizedBox(height: 10.h),
                RatingBar.builder(
                  unratedColor: XColors.secondary_text_color,
                  initialRating: 0,
                  minRating: 1,
                  direction: Axis.horizontal,
                  itemCount: 5,
                  itemSize: 25.sp,
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {},
                ),
                SizedBox(height: 10.h),
                TextField(
                  maxLines: 5,
                  decoration: InputDecoration(
                    hintText: 'اترك تعليقك (اختياري)',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: const BorderSide(
                        color: XColors.secondary_text_color,
                      ),
                    ),
                    hintStyle: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w300,
                      color: XColors.secondary_text_color,
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                AppElevatedButton(
                  child: Text(
                    'ارسل',
                    style: TextStyle(
                      color: XColors.white,
                      fontSize: 18.sp,
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'رجوع',
                    style: TextStyle(
                      fontSize: 14.sp,
                      decoration: TextDecoration.underline,
                      color: XColors.secondary_text_color,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  SizedBox reviewsList() {
    return SizedBox(
      height: 170.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 100,
        itemBuilder: (context, index) => const ReviewContainer(),
      ),
    );
  }
}
