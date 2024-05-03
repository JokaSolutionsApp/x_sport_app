import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport/core/constance/app_constance.dart';

class BannerPartComponent extends StatelessWidget {
  final double top;
  final double right;
  final double left;
  final Color color;

  const BannerPartComponent(
      {super.key,
      required this.top,
      required this.right,
      required this.left,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top.w,
      right: right.w,
      left: left.w,
      height: 160.h,
      child: Container(
        width: 1.sw,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: color,
        ),
      ),
    );
  }
}
