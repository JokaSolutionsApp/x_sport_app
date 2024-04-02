import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport/core/constance/app_constance.dart';

class FilterWidget extends StatelessWidget {
  const FilterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 27.w,
        vertical: 5.h,
      ),
      child: Align(
        alignment: Alignment.centerRight,
        child: Wrap(
          spacing: 8,
          children: [
            FilterChip(
              backgroundColor: XColors.secondary,
              shape: const StadiumBorder(
                side: BorderSide(style: BorderStyle.none),
              ),
              label: const Text('تنس'),
              onSelected: (value) {},
            ),
            FilterChip(
              backgroundColor: XColors.secondary,
              shape: const StadiumBorder(
                side: BorderSide(style: BorderStyle.none),
              ),
              label: const Text('بادل'),
              onSelected: (value) {},
            ),
          ],
        ),
      ),
    );
  }
}
