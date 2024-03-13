import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constance/app_constance.dart';
import '../../../../../core/constance/app_icons_icons.dart';
import '../../../../../core/utils/assets_managers/assets.gen.dart';
import 'payment_method_page.dart';
import '../components/payment_info_components/payment_history_component.dart';
import '../../../../widgets/buttons/submit_button.dart';

class PaymentInfoPage extends StatelessWidget {
  const PaymentInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3FAFF),
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
                      boxShadow: const [BoxShadow()],
                      border: Border.all(
                          color: const Color(0xFFD9D9D9), width: 0.5.w),
                      borderRadius: BorderRadius.circular(2.sp),
                    ),
                    child: Icon(
                      Icons.arrow_back_ios_outlined,
                      color: const Color(0xFF595959),
                      size: 22.sp,
                    ),
                  ),
                ),
                Text(
                  'معلومات الدفع',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700),
                ),
                const Icon(
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
                  fillColor: const Color(0xFFDAEDFF),
                  textColor: XColors.Submit_Button_Color,
                  textSize: 15,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PaymentMethodPage()));
                  },
                ),
                SizedBox(width: 28.w),
                SubmitButton(
                  // padding: 10,
                  radius: 6,
                  height: 56.w,
                  minWidth: 150.w,
                  text: 'تعديل',
                  fillColor: const Color(0xFFDAEDFF),
                  textColor: XColors.Submit_Button_Color,
                  textSize: 15,
                  onPressed: () {},
                )
              ],
            ),
            const PaymentHistoryComponent(),
          ],
        ),
      )),
    );
  }
}
