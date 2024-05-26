import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport/core/constance/app_constance.dart';
import 'package:x_sport/core/localization/locale_externsion.dart';
import 'package:x_sport/core/utils/assets_managers/assets.gen.dart';

class AuthHeader extends StatelessWidget {
  final double? mainTitleFontSize;
  final double? logoHeight;
  final double? logoWidth;
  final double? titleWidth;
  final double? bottomPadding;
  final String mainTitle;
  final String title;
  final String? subtitle;
  const AuthHeader(
      {super.key,
      required this.mainTitle,
      required this.title,
      this.subtitle,
      this.mainTitleFontSize,
      this.logoHeight,
      this.logoWidth,
      this.titleWidth,
      this.bottomPadding});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      height: 0.24.sh,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: [
          Positioned.directional(
            textDirection:
                context.locale.isRTL ? TextDirection.rtl : TextDirection.ltr,
            end: 7.w,
            top: -30.h,
            child: Row(
              children: [
                Text(
                  mainTitle,
                  style: TextStyle(
                      color: XColors.primary.withOpacity(0.15),
                      fontSize: mainTitleFontSize ?? 128.sp,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: bottomPadding ?? 36.h),
                  child: AssetsManager.icons.logoWithOpacity.image(
                    height: logoHeight ?? 90.h,
                    width: logoWidth ?? 90.w,
                  ),
                ),
              ],
            ),
          ),
          Positioned.directional(
            textDirection:
                context.locale.isRTL ? TextDirection.rtl : TextDirection.ltr,
            end: 30.w,
            top: 82.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: titleWidth,
                  child: Text(
                    title,
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      color: XColors.black,
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Offstage(
                  offstage: subtitle == null,
                  child: SizedBox(
                    width: 310.w,
                    child: Text(
                      subtitle ?? '',
                      style: TextStyle(
                        color: XColors.black,
                        fontSize: 13.sp,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
