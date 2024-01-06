import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class IconTextButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final void Function() onPressed;
  final Color color;
  const IconTextButton(
      {super.key,
      required this.icon,
      required this.text,
      required this.onPressed,
      this.color = const Color(0xFF2E2E2E)});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Divider(
        indent: 45.w,
        endIndent: 45.w,
        color: Color(0xFFD7D7D7),
        thickness: 0.5.w,
      ),
      SizedBox(height: 18.h),
      TextButton(
        style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            minimumSize: Size(50.w, 30.h),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            alignment: Alignment.centerLeft),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              text,
              style: GoogleFonts.tajawal(
                color: color,
                fontSize: 15,
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
            SizedBox(width: 12.w),
            Icon(
              icon,
              color: color,
              size: 26.sp,
            ),
          ],
        ),
      )
    ]);
  }
}
