import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_sport/core/constance/app_constance.dart';
import 'package:x_sport/presentation/widgets/buttons/submit_button.dart';
import 'package:x_sport/presentation/widgets/rectangle_container.dart';

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
            fillColor: XColors.Submit_Button_Color,
            textSize: 13,
          ),
          SizedBox(
            width: 270.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  state,
                  style: GoogleFonts.tajawal(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '-',
                  style: GoogleFonts.tajawal(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '12/3/2023',
                  style: GoogleFonts.tajawal(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '-',
                  style: GoogleFonts.tajawal(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'بادل',
                  style: GoogleFonts.tajawal(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  title,
                  style: GoogleFonts.tajawal(
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
