import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:x_sport/core/constance/app_constance.dart';
import 'package:x_sport/core/widgets/global_app_bar.dart';
import 'package:x_sport/app/features/archives/presentation/components/played_games_components/played_games_details_component.dart';
import 'package:x_sport/app/features/archives/presentation/components/played_games_components/played_games_filter_dialog.dart';
import 'package:x_sport/app/features/archives/presentation/components/filter_component.dart';
import 'package:x_sport/app/widgets/buttons/submit_button.dart';
import 'package:x_sport/app/widgets/rectangle_container.dart';

class AcademiesArchiveScreen extends StatelessWidget {
  const AcademiesArchiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F7F9),
      appBar: GlobalAppBar(
        hasSearch: false,
        title: 'ارشيف الاكاديميات',
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 30.w),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return PlayedGamesFilterDialog();
                      });
                },
                child: Container(
                    height: 33.w,
                    width: 33.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.sp),
                        border: Border.all(color: Color(0xFFDBDBDB))),
                    child: Icon(
                      Icons.filter_alt,
                      color: Color(0xFF5E5E5E),
                    )),
              ),
              Text(
                'يمكنك مراجعة المباريات التي لعبتها سابقاََ',
                style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF616161)),
              ),
            ],
          ),
          SizedBox(height: 24.w),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {},
                child: Row(
                  children: [
                    Icon(
                      Icons.keyboard_arrow_up_rounded,
                    ),
                    Text(
                      'الاحدث',
                      style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10.w),
              GestureDetector(
                onTap: () {},
                child: Row(
                  children: [
                    Icon(
                      Icons.keyboard_arrow_down_rounded,
                    ),
                    Text(
                      'الاقدم',
                      style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          PlayedGamesArchiveComponent(
            state: 'حتى الان',
            title: ':اسم الأكاديمية',
          ),
          // AcademiesFilterDialog()
        ]),
      ),
    );
  }
}
