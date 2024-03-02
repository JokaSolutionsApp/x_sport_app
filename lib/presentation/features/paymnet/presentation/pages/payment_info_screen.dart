import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_sport/core/constance/app_constance.dart';
import 'package:x_sport/core/constance/app_icons_icons.dart';
import 'package:x_sport/core/utils/assets_managers/assets.gen.dart';
import 'package:x_sport/presentation/features/paymnet/presentation/pages/payment_method_screen.dart';
import 'package:x_sport/presentation/features/paymnet/presentation/components/payment_info_components/payment_history_component.dart';
import 'package:x_sport/presentation/widgets/buttons/submit_button.dart';

class PaymentInfoScreen extends StatelessWidget {
  const PaymentInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3FAFF),
      body: Center(
          child: Padding(
        padding: EdgeInsets.only(top: 45.w),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    height: 40.w,
                    width: 40.w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [BoxShadow()],
                      border:
                          Border.all(color: Color(0xFFD9D9D9), width: 0.5.w),
                      borderRadius: BorderRadius.circular(2.sp),
                    ),
                    child: Icon(
                      Icons.arrow_back_ios_outlined,
                      color: Color(0xFF595959),
                      size: 22.sp,
                    ),
                  ),
                ),
                Text(
                  'معلومات الدفع',
                  style: GoogleFonts.tajawal(
                      color: Colors.black,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700),
                ),
                Icon(
                  AppIcons.exc_mark,
                  color: Colors.black,
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 30.w),
              height: 270.h,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetsManager.images.payment.creditCard.image().image,
              )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SubmitButton(
                  // padding: 10,
                  radius: 6,
                  height: 56.w,
                  minWidth: 150.w,
                  text: 'اضافة وسيلة دفع',
                  fillColor: Color(0xFFDAEDFF),
                  textColor: XColors.Submit_Button_Color,
                  textSize: 15,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PaymentMethodScreen()));
                  },
                ),
                SizedBox(width: 28.w),
                SubmitButton(
                  // padding: 10,
                  radius: 6,
                  height: 56.w,
                  minWidth: 150.w,
                  text: 'تعديل',
                  fillColor: Color(0xFFDAEDFF),
                  textColor: XColors.Submit_Button_Color,
                  textSize: 15,
                  onPressed: () {},
                )
              ],
            ),
            PaymentHistoryComponent(),
          ],
        ),
      )),
    );
  }
}
