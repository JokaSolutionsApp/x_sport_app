import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport/core/constance/app_constance.dart';

class AppOutlinedButton extends StatelessWidget {
  final Widget? child;
  final void Function()? onPressed;
  const AppOutlinedButton({
    super.key,
    required this.child,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        minimumSize: Size(
          double.infinity,
          30.h,
        ),
        padding: EdgeInsets.symmetric(
          vertical: 12.h,
          horizontal: 16.w,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.r),
        ),
        side: const BorderSide(
          color: XColors.grey6,
        ),
      ),
      child: child,
    );
  }
}
