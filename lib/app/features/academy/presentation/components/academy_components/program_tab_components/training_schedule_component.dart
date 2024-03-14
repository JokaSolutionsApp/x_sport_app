import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:x_sport/core/constance/app_icons_icons.dart';

import '../../../../../../../core/constance/app_constance.dart';
import '../../../../../../widgets/rectangle_container.dart';

class TrainingScheduleComponent extends StatelessWidget {
  TrainingScheduleComponent({super.key});
  final ValueNotifier<int?> isSelectedIndex = ValueNotifier<int?>(null);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 0.4.sh,
      width: 1.sw,
      child: ListView.builder(
          itemExtent: 0.12.sh,
          itemCount: 3,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(bottom: 14.w),
              child: ValueListenableBuilder<int?>(
                valueListenable: isSelectedIndex,
                builder: (context, selectedIndex, child) {
                  final isSelected = index == selectedIndex;
                  return GestureDetector(
                    onTap: () {
                      isSelectedIndex.value = index;
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: 0.7.sw,
                          child: RectangleContainer(
                              radius: 10,
                              containerColor: isSelected
                                  ? Colors.black
                                  : const Color(0xFFDAE9FF),
                              bottomMargin: 0,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16.w),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                            margin:
                                                EdgeInsets.only(right: 10.w),
                                            child: Text(
                                              'تمرين',
                                              style: TextStyle(
                                                  height: 1.8.w,
                                                  fontSize: 16.sp,
                                                  color: isSelected
                                                      ? Colors.white
                                                      : XColors.primary,
                                                  fontWeight: FontWeight.w500),
                                            )),
                                        Icon(
                                          AppIcons.goal_keeper,
                                          size: 34.sp,
                                          color: isSelected
                                              ? Colors.white
                                              : XColors.primary,
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'وصف بسيط من سطر او سطرين',
                                      style: TextStyle(
                                          height: 1.8.w,
                                          fontSize: 12.sp,
                                          color: isSelected
                                              ? Colors.white
                                              : const Color(0xFF99A7C9),
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      '2 hours',
                                      style: TextStyle(
                                          height: 1.8.w,
                                          fontSize: 12.sp,
                                          color: isSelected
                                              ? Colors.white
                                              : const Color(0xFF99A7C9),
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ),
                              )),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 6.w, left: 12.w),
                          child: const Text('9:00 AM'),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10.w),
                          width: 30.w,
                          height: 0.8.w,
                          color: const Color(0xFF797979),
                        ),
                      ],
                    ),
                  );
                },
              ),
            );
          }),
    );
  }
}
