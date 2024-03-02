import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class IconTextButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final void Function() onPressed;
  final int iconSize;
  final int fontSize;
  final Color color;
  final bool hasDivider;
  const IconTextButton({
    super.key,
    required this.icon,
    required this.text,
    required this.onPressed,
    this.color = const Color(0xFF2E2E2E),
    this.iconSize = 26,
    this.fontSize = 15,
    this.hasDivider = true,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      hasDivider
          ? Divider(
              indent: 45.w,
              endIndent: 45.w,
              color: Color(0xFFD7D7D7),
              thickness: 0.5.w,
            )
          : SizedBox.shrink(),
      // SizedBox(height: 18.h),
      TextButton(
        style: TextButton.styleFrom(
            backgroundColor: Colors.transparent,
            surfaceTintColor: Colors.transparent,
            padding: EdgeInsets.zero,
            minimumSize: Size(50.w, 60.h),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            alignment: Alignment.centerLeft),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              text,
              style: GoogleFonts.tajawal(
                color: color,
                fontSize: fontSize.sp,
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
            SizedBox(width: 12.w),
            Icon(
              icon,
              color: color,
              size: iconSize.sp,
            ),
          ],
        ),
      )
    ]);
  }
}
