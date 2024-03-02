import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_sport/core/constance/app_constance.dart';
import 'package:x_sport/core/constance/app_icons_icons.dart';
import 'package:x_sport/presentation/features/home/presentation/components/play_components/banner_component.dart';
import 'package:x_sport/presentation/components/profile_screen_components/profile_main_components/profile_appbar_component.dart';
import 'package:x_sport/presentation/features/match/presentation/pages/match_reservation_screen.dart';
import 'package:x_sport/presentation/features/tournaments/presentation/pages/upcoming_tournaments_screen.dart';
import 'package:x_sport/presentation/painters/play_types_painter.dart';
import 'package:x_sport/presentation/widgets/buttons/submit_button.dart';
import 'package:x_sport/presentation/widgets/rectangle_container.dart';

class PlayScreen extends StatelessWidget {
  PlayScreen({super.key});
  final List<Map<String, dynamic>> matches = [
    {
      'title': 'المباريات التنافسية',
      'subtitle': 'العب مباريات تنافسية قريبة واكسب نقط اكثر!',
      'image': AppIcons.champion_ship,
      'screen': UpCommingTournamentsScreen(),
    },
    {
      'title': 'المباريات الودية',
      'subtitle': 'العب مباريات ودية قريبة منك!',
      'image': AppIcons.friendly,
      'screen': MatchReservationScreen(),
    },
    {
      'title': 'الدوريات',
      'subtitle': 'اطلع على نتائج الدوريات المقامة واشترك في دوريات قادمة',
      'image': AppIcons.cup_1,
      'screen': UpCommingTournamentsScreen(),
    },
    {
      'title': 'البطولات',
      'subtitle': 'اطلع على نتائج البطولات المقامة واشترك في بطولات قادمة',
      'image': AppIcons.championship,
      'screen': UpCommingTournamentsScreen(),
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Color(0xFFF6F7F9),
      appBar: ProfileAppBarComponent(
        isProfile: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 40.h),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 6.w),
              const BannerComponent(),
              Container(
                height: 0.484.sh,
                margin: EdgeInsets.only(right: 24.w, bottom: 12.h),
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    matches[index]['screen']));
                      },
                      child: CustomPaint(
                        painter: PlayTypesPainter(),
                        size: Size(215.w, 213.h),
                        child: Container(
                          padding: EdgeInsets.only(top: 34.h, right: 14.w),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      matches[index]['title'],
                                      textAlign: TextAlign.end,
                                      style: GoogleFonts.tajawal(
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFF2A2A2A),
                                      ),
                                    ),
                                    SizedBox(width: 20.w),
                                    SizedBox(
                                        height: 35.w,
                                        width: 35.w,
                                        child: index == 0 || index == 3
                                            ? Image.asset(
                                                'assets/images/play/friendly.png',
                                                fit: BoxFit.contain,
                                              )
                                            : Icon(
                                                matches[index]['image'],
                                                color:
                                                    XColors.Submit_Button_Color,
                                                size: 30.sp,
                                              )

                                        // Image.asset(
                                        //   'assets/images/play/${matches[index]['image']}',
                                        //   fit: BoxFit.fill,
                                        // ),
                                        )
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 26.w),
                                  width: 138.w,
                                  child: Text(
                                    matches[index]['subtitle'],
                                    textAlign: TextAlign.end,
                                    style: GoogleFonts.tajawal(
                                      fontSize: 13.sp,
                                      color: Color(0xFF898989),
                                    ),
                                  ),
                                ),
                              ]),
                        ),
                      ),
                    );
                  },
                ),
              ),
              RectangleContainer(
                bottomMargin: 0,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 20.h, horizontal: 110.w),
                  child: Column(
                    children: [
                      Text(
                        'الملاعب القريبة منك',
                        style: GoogleFonts.tajawal(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF4B4B4B),
                        ),
                      ),
                      SizedBox(height: 20.h),
                      SubmitButton(
                        minWidth: 180,
                        height: 40,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      MatchReservationScreen()));
                        },
                        text: 'نظم حجز',
                        textSize: 15,
                        fillColor: Color(0xFF2492F8),
                        radius: 12,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
