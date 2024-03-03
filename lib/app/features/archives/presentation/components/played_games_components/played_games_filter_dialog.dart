import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:x_sport/core/constance/app_constance.dart';
import 'package:x_sport/core/constance/app_icons_icons.dart';
import 'package:x_sport/app/features/archives/presentation/components/filter_component.dart';
import 'package:x_sport/app/widgets/buttons/submit_button.dart';

class PlayedGamesFilterDialog extends StatelessWidget {
  PlayedGamesFilterDialog({super.key});
  final games = [
    'الكل',
    'تنس',
    'بادل',
  ];
  final type = [
    'الكل',
    'ودية',
    'تنافسية',
  ];
  final state = [
    'الكل',
    'فوز',
    'خسارة',
  ];
  final date = [
    'الكل',
    'اخر اسبوع',
    'اخر شهر',
    'اخر سنة',
  ];

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 110.w),
      child: SizedBox(
        height: 1.sh,
        width: 500,
        child: AlertDialog(
          contentPadding: EdgeInsets.symmetric(horizontal: 0.w, vertical: 20.w),
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.sp),
          ),
          title: Stack(
            alignment: Alignment.center,
            children: [
              Text(
                'فلترة الأرشيف',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Icon(
                    AppIcons.cancel,
                    size: 16.sp,
                  ),
                ),
              )
            ],
          ),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                FilterComponent(title: ':اللعبة', data: games),
                FilterComponent(title: ':نوع المباراة', data: type),
                FilterComponent(title: ':نتيجة المباراة', data: state),
                FilterComponent(title: ':تاريخ المباراة', data: date),
              ],
            ),
          ),
          actions: [
            SubmitButton(
              text: 'تطبيق التغييرات',
              textSize: 12,
              fillColor: XColors.Submit_Button_Color,
              minWidth: 147,
              height: 34,
              radius: 4,
              onPressed: () {},
            )
          ],
          actionsAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}
