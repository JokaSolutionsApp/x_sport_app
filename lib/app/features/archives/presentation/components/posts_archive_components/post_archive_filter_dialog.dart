import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/constance/app_constance.dart';
import '../../../../../../core/constance/app_icons_icons.dart';
import '../filter_component.dart';
import '../../../../../widgets/buttons/submit_button.dart';

class PostsArchiveFilterDialog extends StatelessWidget {
  PostsArchiveFilterDialog({super.key});

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
        height: 0.4.sh,
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
                FilterComponent(title: ':تاريخ المباراة', data: date),
              ],
            ),
          ),
          actions: [
            SubmitButton(
              text: 'تطبيق التغييرات',
              textSize: 12,
              fillColor: XColors.primary,
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
