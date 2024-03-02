import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_sport/core/constance/app_constance.dart';
import 'package:x_sport/presentation/features/home/presentation/components/home_components/home_stadiums_component.dart';
import 'package:x_sport/presentation/components/profile_screen_components/profile_main_components/profile_appbar_component.dart';
import 'package:x_sport/presentation/widgets/buttons/submit_button.dart';
import 'package:x_sport/presentation/widgets/rectangle_container.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      HomeOptions(
        title: 'ابحث عن اكاديميات بقربك لتحول هوايتك الى احتراف',
        image: 'assets/images/home/search.png',
        color: Colors.white,
        textColor: Color(0xFF595959),
        btnColor: XColors.Submit_Button_Color,
        btnTextColor: Colors.white,
      ),
      HomeOptions(
          title: 'اضافة اصدقاء في منطقتك لتتنافسوا سويا',
          image: 'assets/images/home/friends.png',
          color: XColors.Submit_Button_Color,
          textColor: Colors.white,
          btnColor: Colors.white,
          btnTextColor: XColors.Submit_Button_Color,
          fadedImage: 'assets/images/home/faded1.png'),
      HomeOptions(
          fadedTop: 10,
          title: 'استعرض الملاعب بالقرب منك ونظم حجزك القادم',
          image: 'assets/images/home/stadiums.png',
          color: XColors.Submit_Button_Color,
          textColor: Colors.white,
          btnColor: Colors.white,
          btnTextColor: XColors.Submit_Button_Color,
          fadedImage: 'assets/images/home/faded2.png'),
      HomeOptions(
        title: 'انشر اعلان مباراتك لتبحث عن خصم لك!',
        image: 'assets/images/home/post.png',
        color: Colors.white,
        textColor: Color(0xFF595959),
        btnColor: XColors.Submit_Button_Color,
        btnTextColor: Colors.white,
      ),
    ];
    return Scaffold(
      backgroundColor: Color(0xFFF6F7F9),
      appBar: ProfileAppBarComponent(
        isProfile: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 22.h),
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 12.w),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.sp),
                ),
              ),
              child: RectangleContainer(
                  radius: 20,
                  height: 100,
                  width: 367,
                  containerColor: XColors.Submit_Button_Color,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.w),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'اهلا (اسم المستخدم)',
                              style: GoogleFonts.tajawal(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 14.w),
                            Text(
                              'المنافسة اقرب اليك',
                              style: GoogleFonts.tajawal(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )),
            ),
            Container(
              height: 434.h,
              margin: EdgeInsets.only(top: 12.h),
              alignment: Alignment.center,
              padding: EdgeInsets.all(12.w),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.sp),
                ),
              ),
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 186.w,
                    crossAxisCount: 2,
                    crossAxisSpacing: 12.0.w,
                    mainAxisSpacing: 10.0.w,
                  ),
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return RectangleContainer(
                      containerColor: items[index].color,
                      child: Stack(alignment: Alignment.topRight, children: [
                        items[index].fadedImage != null
                            ? Positioned(
                                top: items[index].fadedTop,
                                left: 9.w,
                                height: 50.w,
                                width: 50.w,
                                child: Image.asset(items[index].fadedImage!),
                              )
                            : SizedBox.shrink(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Image.asset(items[index].image),
                              Text(
                                items[index].title,
                                textAlign: TextAlign.end,
                                style: GoogleFonts.tajawal(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w500,
                                  color: items[index].textColor,
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: SubmitButton(
                                    textColor: items[index].btnTextColor,
                                    fillColor: items[index].btnColor,
                                    radius: 4,
                                    minWidth: 75,
                                    height: 18,
                                    textSize: 14,
                                    text: 'المزيد',
                                    onPressed: () {}),
                              )
                            ],
                          ),
                        )
                      ]),
                    );
                  }),
            ),
            HomeStadiumsComponent()
          ],
        ),
      ),
    );
  }
}

class HomeOptions {
  final String title;
  final String image;
  final Color color;
  final Color textColor;
  final Color btnTextColor;
  final Color btnColor;
  final String? fadedImage;
  final double fadedTop;

  HomeOptions(
      {required this.title,
      required this.image,
      required this.color,
      required this.textColor,
      required this.btnTextColor,
      required this.btnColor,
      this.fadedTop = 0,
      this.fadedImage});
}
