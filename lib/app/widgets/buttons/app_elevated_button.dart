import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport/core/constance/app_constance.dart';

class AppElevatedButton extends StatelessWidget {
  final Widget? child;
  final void Function()? onPressed;

  const AppElevatedButton({
    super.key,
    required this.child,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(
          double.infinity,
          30.h,
        ),
        backgroundColor: XColors.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        padding: EdgeInsets.symmetric(
          vertical: 12.h,
          horizontal: 16.w,
        ),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
