import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:x_sport/core/constance/app_constance.dart';

class GenderComponent extends StatelessWidget {
  GenderComponent({super.key, required this.getGender});
  final List<String> genders = ['ذكر', 'انثى'];
  final void Function(String) getGender;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 0.83.sw,
      height: 50.h,
      decoration: BoxDecoration(
        color: Colors.white,
        // border: Border.all(color: Color(0xFFCFCFCF), width: 0.5.w),
        borderRadius: BorderRadius.circular(8.sp),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: DropdownButtonFormField<String>(
              value: genders[0],
              style: TextStyle(
                  height: 1.8.w,
                  fontSize: 16.sp,
                  color: XColors.Background_Color1,
                  fontWeight: FontWeight.w400),
              icon: Icon(
                Icons.keyboard_arrow_down_sharp,
                color: const Color(0xFF616161),
                size: 20.sp,
              ),
              iconSize: 26.sp,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  vertical: 12.h,
                  horizontal: 12.w,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.sp),
                  borderSide: const BorderSide(
                    color: Color(0xFFCFCFCF),
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.sp),
                  borderSide: const BorderSide(
                    color: Color(0xFFCFCFCF),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.sp),
                  borderSide: const BorderSide(
                    color: Color(0xFFCFCFCF),
                  ),
                ),
                filled: true,
                fillColor: Colors.white.withOpacity(0.8),
              ),
              onChanged: (newValue) {
                getGender(newValue!);
              },
              items: genders.map((item) {
                return DropdownMenuItem<String>(
                  alignment: Alignment.centerRight,
                  value: item,
                  child: Text(item),
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
