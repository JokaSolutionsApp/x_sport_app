import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_sport/core/constance/app_constance.dart';
import 'package:x_sport/core/constance/app_icons_icons.dart';
import 'package:x_sport/presentation/widgets/buttons/submit_button.dart';

class ProfileAlertDialog extends StatelessWidget {
  final ValueNotifier<int> selectedIndex;
  final List favoriteSports;
  final String title;
  final String subtitle;
  final Color submitColor;
  final Color textColor;
  const ProfileAlertDialog(
      {super.key,
      required this.selectedIndex,
      required this.favoriteSports,
      required this.title,
      required this.subtitle,
      this.submitColor = XColors.Submit_Button_Color,
      this.textColor = Colors.black});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.sp),
      ),
      title: Stack(
        alignment: Alignment.center,
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.tajawal(
              textStyle: TextStyle(
                fontSize: 17.sp,
                fontWeight: FontWeight.w500,
                color: textColor,
              ),
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
                size: 20.sp,
              ),
            ),
          )
        ],
      ),
      content: SizedBox(
        height: 300.h,
        width: 200.w,
        child: Column(
          children: [
            GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 80.w,
                  mainAxisExtent: 40.h,
                  crossAxisSpacing: 14.0.w,
                  mainAxisSpacing: 20.0.w,
                ),
                itemCount: favoriteSports.length,
                itemBuilder: (context, index) {
                  // Render the regular item

                  return ValueListenableBuilder(
                      valueListenable: selectedIndex,
                      builder: (context, isSelected, child) {
                        final isSelected = selectedIndex.value == index;
                        final Color selectedText = isSelected
                            ? Colors.white
                            : XColors.Submit_Button_Color;
                        final Color selectedButton = isSelected
                            ? XColors.Submit_Button_Color
                            : Color(0xFFECECFB);
                        return GestureDetector(
                          onTap: () {
                            selectedIndex.value = index;
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: selectedButton,
                              borderRadius: BorderRadius.circular(12.sp),
                              border: Border.all(
                                color: Colors.white,
                                width: 1.0,
                              ),
                            ),
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 12.w),
                              alignment: Alignment.center,
                              child: Text(
                                favoriteSports[index]['level'],
                                style: GoogleFonts.tajawal(
                                  textStyle: TextStyle(
                                    color: selectedText,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      });
                }),
            SizedBox(height: 10.w),
            SubmitButton(
                text: 'تأكيد',
                fillColor: submitColor,
                minWidth: 80.w,
                height: 40.h,
                textSize: 15,
                onPressed: () {
                  Navigator.of(context).pop();
                }),
            SizedBox(height: 10.w),
            Text(
              subtitle,
              textAlign: TextAlign.end,
              style: GoogleFonts.tajawal(
                textStyle: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
      actionsAlignment: MainAxisAlignment.center,
    );
  }
}
