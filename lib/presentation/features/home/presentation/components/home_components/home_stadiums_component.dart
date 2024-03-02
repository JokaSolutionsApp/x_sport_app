import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_sport/core/constance/app_constance.dart';
import 'package:x_sport/presentation/features/courts/presentation/pages/courts_screen.dart';
import 'package:x_sport/presentation/widgets/buttons/submit_button.dart';

class HomeStadiumsComponent extends StatelessWidget {
  final ValueNotifier<int> selectedIdx = ValueNotifier<int>(0);

  HomeStadiumsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210.h,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 2.w),
        reverse: true,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemExtent: 170.w,
        itemCount: 4,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 8.w),
            child: GestureDetector(
              onTap: () {
                selectedIdx.value = index;
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CourtsScreen()));
              },
              child: Container(
                height: 32.h,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4,
                          offset: Offset(0, 2.w))
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.sp)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 83.w,
                      width: 137.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.sp),
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/images/home/stadium.png'),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 10.w),
                      alignment: Alignment.center,
                      child: Text(
                        'اسم الملعب',
                        style: GoogleFonts.tajawal(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp,
                        ),
                      ),
                    ),
                    Text(
                      'وصف',
                      style: GoogleFonts.tajawal(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: SubmitButton(
                          textColor: Colors.white,
                          fillColor: XColors.Submit_Button_Color,
                          radius: 4,
                          minWidth: 88,
                          height: 18,
                          textSize: 14,
                          text: 'تابع',
                          onPressed: () {}),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
