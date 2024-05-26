import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport/core/utils/assets_managers/assets.gen.dart';

import '../../../core/constance/app_constance.dart';

class SubmitButton extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  final bool isButtonEnabled;
  final Color textColor;
  final Color fillColor;
  final double radius;
  final double minWidth;
  final double height;
  final double textSize;
  final double padding;
  final FontWeight? fontWeight;
  final bool hasBoarder;
  final bool hasArrow;

  const SubmitButton(
      {super.key,
      required this.text,
      required this.onPressed,
      this.isButtonEnabled = true,
      this.textColor = const Color(0xffffffff),
      this.fillColor = XColors.Background_Color1,
      this.radius = 15,
      this.minWidth = 329,
      this.height = 58,
      this.textSize = 20,
      this.padding = 4,
      this.fontWeight = FontWeight.w500,
      this.hasBoarder = false,
      this.hasArrow = false});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      minWidth: minWidth.w,
      height: height.h,
      color: fillColor,
      padding: EdgeInsets.all(padding.sp),
      shape: RoundedRectangleBorder(
        side: hasBoarder
            ? BorderSide(
                color: XColors.primary,
                width: 0.8.w,
              )
            : BorderSide.none,
        borderRadius: BorderRadius.circular(radius.sp),
      ),
      onPressed: isButtonEnabled ? onPressed : () {},
      child: SizedBox(
        width: minWidth.w,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Offstage(
              offstage: hasArrow == false,
              child: Row(
                children: [
                  AssetsManager.icons.arBackArrow
                      .image(color: XColors.white, height: 20.h),
                  SizedBox(
                    width: 10.w,
                  )
                ],
              ),
            ),
            Text(
              text,
              style: TextStyle(
                color: textColor,
                fontSize: textSize.sp,
                fontWeight: fontWeight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
