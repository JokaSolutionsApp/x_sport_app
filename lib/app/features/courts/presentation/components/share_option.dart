import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport/core/constance/app_constance.dart';

class ShareOption extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onTap;
  final bool underline;
  final BorderRadiusGeometry? borderRadius;

  const ShareOption({
    super.key,
    required this.icon,
    required this.text,
    required this.onTap,
    this.underline = true,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: XColors.grey7,
          borderRadius: borderRadius,
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 14.h,
                horizontal: 10.w,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      text,
                      style: TextStyle(
                        fontSize: 12.sp,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      color: XColors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Icon(
                        icon,
                        size: 12.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            underline
                ? const Divider(
                    color: XColors.grey8,
                  )
                : const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
