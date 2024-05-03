import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import '../../../../../../core/constance/app_constance.dart';
import '../../../../../../core/constance/app_icons_icons.dart';

class OptionsButtonComponent extends StatelessWidget {
  final ValueNotifier<bool> openCloseDial = ValueNotifier<bool>(false);
  final void Function(int x) handleAddButton;

  OptionsButtonComponent({super.key, required this.handleAddButton});

  @override
  Widget build(BuildContext context) {
    return SpeedDial(
      shape: const CircleBorder(
        side: BorderSide(
          color: XColors.primary,
        ),
      ),
      icon: Icons.add,
      iconTheme: IconThemeData(color: Colors.white, size: 24.sp),
      spacing: 0.01.sh,
      switchLabelPosition: true,
      backgroundColor: XColors.primary,
      overlayColor: Colors.black,
      overlayOpacity: 0.6,
      openCloseDial: openCloseDial,
      buttonSize: Size(60.w, 60.w),
      childrenButtonSize: Size(80.sp, 80.sp),
      children: [
        SpeedDialChild(
          shape: const CircleBorder(
            side: BorderSide(
              color: Colors.white,
            ),
          ),
          // backgroundColor: Colors.white,
          onTap: () {
            openCloseDial.value = false;
            handleAddButton(1);
          },
          labelWidget: Padding(
            padding: EdgeInsets.only(left: 130.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  color: Colors.transparent,
                  child: Text(
                    'بدء مباراة',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(width: 10.w),
                Container(
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  height: 70.w,
                  width: 70.w,
                  child: const Icon(
                    AppIcons.start_match,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
        SpeedDialChild(
          shape: const CircleBorder(
            side: BorderSide(
              color: Colors.white,
            ),
          ),

          labelWidget: Padding(
            padding: EdgeInsets.only(left: 120.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  color: Colors.transparent,
                  child: Text(
                    'حجز ملعب',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(width: 10.w),
                GestureDetector(
                  onTap: () {
                    openCloseDial.value = false;
                    handleAddButton(2);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    height: 70.w,
                    width: 70.w,
                    child: const Icon(
                      AppIcons.reserve_court,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),

          // label: ' LocaleKeys.main_screen_telegram_lable.tr()',
          // labelBackgroundColor: Colors.black.withOpacity(0.4),
          // labelStyle: TextStyle(fontSize: 14.sp, color: Colors.white),
        ),
        SpeedDialChild(
          shape: const CircleBorder(
            side: BorderSide(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.white,
          labelWidget: Padding(
            padding: EdgeInsets.only(left: 110.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  color: Colors.transparent,
                  child: Text(
                    'منشور جديد',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(width: 10.w),
                GestureDetector(
                  onTap: () {
                    openCloseDial.value = false;
                    handleAddButton(3);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    height: 70.w,
                    width: 70.w,
                    child: const Icon(
                      AppIcons.new_post,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
