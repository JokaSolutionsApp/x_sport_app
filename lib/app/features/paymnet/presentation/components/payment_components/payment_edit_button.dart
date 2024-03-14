import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:x_sport/core/constance/app_constance.dart';

class PaymentEditButton extends StatelessWidget {
  final String title;
  final String subTitle;
  final void Function() onTap;
  const PaymentEditButton(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 18.w),
      width: 1.sw,
      height: 75.h,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 14.w),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.sp),
            color: Colors.white,
            border: Border.all(color: const Color(0xFFD0D0D0), width: 0.5.w)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: onTap,
              child: Container(
                alignment: Alignment.center,
                height: 38.w,
                width: 38.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: const Color(0xFFD0D0D0),
                  ),
                ),
                child: const Icon(
                  Icons.edit,
                  color: XColors.primary,
                ),
              ),
            ),
            RichText(
              text: TextSpan(
                  text: '$title ',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w500),
                  children: [
                    TextSpan(
                      text: subTitle,
                      style: TextStyle(
                          color: XColors.primary,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500),
                    )
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
