import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_sport/core/constance/app_constance.dart';
import 'package:x_sport/core/constance/app_icons_icons.dart';
import 'package:x_sport/core/utils/assets_managers/assets.gen.dart';
import 'package:x_sport/main.dart';
import 'package:x_sport/presentation/features/paymnet/presentation/components/payment_info_components/payment_history_component.dart';
import 'package:x_sport/presentation/features/tournaments/presentation/components/tournament_result_rank_component.dart';
import 'package:x_sport/presentation/features/tournaments/presentation/components/tournaments_result_matches_component.dart';
import 'package:x_sport/presentation/features/tournaments/presentation/pages/tournaments_result_screen.dart';
import 'package:x_sport/presentation/widgets/buttons/submit_button.dart';
import 'package:x_sport/presentation/widgets/rectangle_container.dart';

class TournamentScreen extends StatelessWidget {
  TournamentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Padding(
        padding: EdgeInsets.only(top: 45.w),
        child: SizedBox(
          width: 379.w,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      height: 35.w,
                      width: 35.w,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [BoxShadow()],
                        border: Border.all(color: Colors.black, width: 0.5.w),
                        borderRadius: BorderRadius.circular(6.sp),
                      ),
                      child: Icon(
                        Icons.arrow_back_ios_outlined,
                        color: Color(0xFF595959),
                        size: 22.sp,
                      ),
                    ),
                  ),
                  Text(
                    'اسم البطولة',
                    style: GoogleFonts.tajawal(
                        color: Colors.black,
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox.shrink()
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 19.w, bottom: 16.w),
                height: 243.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(21.sp),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetsManager.images.courts.court.image().image,
                    )),
              ),
              SizedBox(
                width: 1.sw,
                height: 90.w,
                child: RectangleContainer(
                  bottomMargin: 16,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 7.w, horizontal: 14.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'الجهة المنظمة: اسم الملعب/الاكاديمية',
                          style: GoogleFonts.tajawal(
                              color: Colors.black,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'البدء: السبت 9/11/2023',
                              style: GoogleFonts.tajawal(
                                  color: Color(0xFF727272),
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(width: 46.w),
                            Row(
                              children: [
                                Text(
                                  'الانتهاء: الخميس 9/11/2023',
                                  style: GoogleFonts.tajawal(
                                      color: Color(0xFF727272),
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(width: 4.w),
                                GestureDetector(
                                  child: Icon(
                                    AppIcons.calender,
                                    size: 30.sp,
                                    color: Color(0xFF727272),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 1.sw,
                height: 160.w,
                child: RectangleContainer(
                  bottomMargin: 16,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.w, horizontal: 12.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'التسجيل متاح',
                              style: GoogleFonts.tajawal(
                                  color: Color(0xFF00D076),
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'معلومات الاشتراك',
                              style: GoogleFonts.tajawal(
                                  color: Color(0xFF727272),
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        SizedBox(height: 8.w),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              '100 USD',
                              style: GoogleFonts.tajawal(
                                  color: XColors.Submit_Button_Color,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              ' :رسم الاشتراك',
                              style: GoogleFonts.tajawal(
                                  color: Color(0xFF7A7A7A),
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        SizedBox(height: 8.w),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'مبتدئ-متوسط',
                              style: GoogleFonts.tajawal(
                                  color: XColors.Submit_Button_Color,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              ' :مستوى البطولة',
                              style: GoogleFonts.tajawal(
                                  color: Color(0xFF7A7A7A),
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        SizedBox(height: 8.w),
                        SizedBox(
                          width: 1.sw,
                          height: 30.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(
                                  width: 120.w,
                                  child: Stack(
                                    children: List.generate(
                                      6,
                                      (index) => Positioned(
                                        left: index *
                                            15.0, // Adjust the spacing between circles
                                        child: Container(
                                          width: 30.w,
                                          height: 30.w,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetsManager
                                                  .images.avatars.avatar2
                                                  .image(
                                                    fit: BoxFit.cover,
                                                  )
                                                  .image,
                                            ),
                                            shape: BoxShape.circle,
                                            color: Color.fromARGB(index * 60,
                                                index * 40, index * 10, 200),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )),
                              Text(
                                ' :المشاركين',
                                style: GoogleFonts.tajawal(
                                    color: Color(0xFF7A7A7A),
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                  width: 1.sw,
                  // height: 200.w,
                  child: RectangleContainer(
                    bottomMargin: 16,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 8.0.w, vertical: 12.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: Text(
                              'جوائز البطولة',
                              style: GoogleFonts.tajawal(
                                  color: Colors.black,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: 0.6.sw,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '1st',
                                      style: GoogleFonts.tajawal(
                                          color: Colors.black,
                                          fontSize: 38.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      '2000\$',
                                      style: GoogleFonts.tajawal(
                                          color: XColors.Submit_Button_Color,
                                          fontSize: 36.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                color: Color(0xFFD4D4D4),
                                height: 0.5.w,
                              ),
                              SizedBox(
                                width: 0.58.sw,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '2nd',
                                      style: GoogleFonts.tajawal(
                                          color: Colors.black,
                                          fontSize: 33.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      '1000\$',
                                      style: GoogleFonts.tajawal(
                                          color: XColors.Submit_Button_Color,
                                          fontSize: 31.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                color: Color(0xFFD4D4D4),
                                height: 0.5.w,
                              ),
                              SizedBox(
                                width: 0.5.sw,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '3rd',
                                      style: GoogleFonts.tajawal(
                                          color: Colors.black,
                                          fontSize: 23.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      '500\$',
                                      style: GoogleFonts.tajawal(
                                          color: XColors.Submit_Button_Color,
                                          fontSize: 21.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )),
              SubmitButton(
                  radius: 12,
                  height: 60.w,
                  minWidth: 420.w,
                  fillColor: XColors.Submit_Button_Color,
                  text: 'عرض النتائج',
                  onPressed: () {
                    Navigator.of(navigatorKey.currentContext!).push(
                      MaterialPageRoute(
                          builder: (context) => TournamentsResultScreen()),
                    );
                  }),
            ],
          ),
        ),
      )),
    );
  }
}