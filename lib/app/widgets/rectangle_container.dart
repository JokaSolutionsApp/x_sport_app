import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RectangleContainer extends StatelessWidget {
  final double bottomMargin;
  final double radius;
  final Widget child;
  final int borderColor;
  final Color containerColor;
  final double borderWidth;
  final double? height;
  final double? width;
  final EdgeInsets? padding;

  const RectangleContainer({
    super.key,
    this.bottomMargin = 0,
    required this.child,
    this.radius = 14,
    this.borderColor = 0xFFE4E4E4,
    this.borderWidth = 0.5,
    this.containerColor = Colors.white,
    this.height,
    this.width,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height?.w,
      width: width?.w,
      padding: padding,
      margin: EdgeInsets.only(bottom: bottomMargin),
      decoration: ShapeDecoration(
        color: containerColor,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: borderWidth.w, color: Color(borderColor)),
          borderRadius: BorderRadius.circular(radius.sp),
        ),
        shadows: [
          BoxShadow(
            color: const Color(0x19000000),
            blurRadius: 12.sp,
            offset: Offset(0, 3.h),
            spreadRadius: 0,
          )
        ],
      ),
      child: child,
    );
  }
}
