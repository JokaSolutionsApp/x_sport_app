import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/constance/app_constance.dart';
import '../../../../../widgets/buttons/submit_button.dart';
import '../../../../../widgets/rectangle_container.dart';

class PlayedGamesArchiveComponent extends StatelessWidget {
  final String state;
  final String title;
  const PlayedGamesArchiveComponent(
      {super.key, required this.state, required this.title});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 6,
      separatorBuilder: (context, index) => SizedBox(height: 21.w),
      itemBuilder: (context, index) => RectangleContainer(
        radius: 11,
        height: 50,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          SubmitButton(
            text: 'تفاصيل',
            onPressed: () {},
            minWidth: 83,
            height: 23,
            radius: 4,
            fillColor: XColors.primary,
            textSize: 13,
          ),
          SizedBox(
            width: 270.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  state,
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '-',
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '12/3/2023',
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '-',
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'بادل',
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
