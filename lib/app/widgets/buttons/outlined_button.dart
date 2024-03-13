import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constance/app_constance.dart';
import '../../../core/utils/assets_managers/assets.gen.dart';

class OutlinButton extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  final bool isButtonEnabled;
  final Color textColor;
  final Color fillColor;
  final AssetGenImage image;
  const OutlinButton(
      {super.key,
      required this.text,
      required this.onPressed,
      this.isButtonEnabled = true,
      this.textColor = const Color(0xffffffff),
      this.fillColor = XColors.Background_Color1,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      minWidth: 329.w,
      height: 58.h,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: XColors.Outline_Button_Color, width: 1.w),
        borderRadius: BorderRadius.circular(15.sp),
      ),
      onPressed: isButtonEnabled ? onPressed : () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('assets/icons/$image'),
          Text(
            text,
            style: TextStyle(
                color: textColor, fontSize: 16.sp, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
