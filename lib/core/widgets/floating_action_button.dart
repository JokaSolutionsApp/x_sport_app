import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constance/app_constance.dart';

class FloatingButton extends StatelessWidget {
  final IconData iconData;
  final VoidCallback onPressed;
  const FloatingButton(
      {super.key, required this.iconData, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: Container(
        height: 62.w,
        width: 62.w,
        decoration: BoxDecoration(
            color: XColors.primary, borderRadius: BorderRadius.circular(7.sp)),
        child: Icon(
          iconData,
          color: Colors.white,
          size: 32.sp,
        ),
      ),
    );
  }
}
