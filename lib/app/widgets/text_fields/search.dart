import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../features/home/presentation/components/search_components/user_search_bloc.dart';

class SreachFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final UserSearchBloc userSearchBloc;
  final Color fillColor;
  final Widget? suffix;

  const SreachFieldWidget({
    super.key,
    required this.controller,
    required this.userSearchBloc,
    this.fillColor = const Color(0xFFEBEBEB),
    this.suffix = const Icon(
      Icons.search,
      color: Color(0xFF4F4F4F),
      size: 28,
    ),
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      child: TextField(
        textDirection: TextDirection.rtl,
        textAlign: TextAlign.right,
        controller: controller,
        onChanged: (query) {
          userSearchBloc.searchUsers(query);
        },
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 8.h),
          suffixIcon: suffix,
          filled: true,
          enabled: true,
          fillColor: fillColor,
          suffixIconColor: Colors.black,
          hintText: '...ادخل ما تبحث عنه',
          hintStyle: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 15.sp,
              color: const Color(0xFF7C7C7C)),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: const Color(0xFFC9C9C9), width: 0.5.w),
            borderRadius: BorderRadius.all(Radius.circular(15.sp)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: const Color(0xFFC9C9C9), width: 0.5.w),
            borderRadius: BorderRadius.all(Radius.circular(15.sp)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: const Color(0xFFC9C9C9), width: 0.5.w),
            borderRadius: BorderRadius.all(Radius.circular(15.sp)),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.sp)),
            borderSide: BorderSide(color: const Color(0xFFC9C9C9), width: 0.5.w),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.sp)),
            borderSide: BorderSide(color: const Color(0xFFC9C9C9), width: 0.5.w),
          ),
        ),
      ),
    );
  }
}
