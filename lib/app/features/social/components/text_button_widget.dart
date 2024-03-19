import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constance/app_constance.dart';

class TextButtonWidget extends StatelessWidget {
  final double? borderRadius;
  final Color? backgroundColor;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? buttonWidth;
  final double? buttonHeight;
  final String text;
  final TextStyle textStyle;
  final VoidCallback onPressed;
  const TextButtonWidget({
    super.key,
    this.borderRadius,
    this.backgroundColor,
    this.horizontalPadding,
    this.verticalPadding,
    this.buttonHeight,
    this.buttonWidth,
    required this.text,
    required this.textStyle,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              borderRadius ?? 32.0,
            ),
          ),
        ),
        backgroundColor: MaterialStatePropertyAll(
          backgroundColor ?? XColors.primary,
        ),
        padding: MaterialStateProperty.all(
          EdgeInsets.symmetric(
            horizontal: horizontalPadding?.w ?? 24.w,
            vertical: verticalPadding?.h ?? 12.h,
          ),
        ),
        fixedSize: MaterialStateProperty.all(
          Size(
            buttonWidth?.w ?? double.maxFinite,
            buttonHeight ?? 45.h,
          ),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: textStyle,
      ),
    );
  }
}
