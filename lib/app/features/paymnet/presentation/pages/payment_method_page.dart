import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:x_sport/core/constance/app_icons_icons.dart';
import 'package:x_sport/core/utils/assets_managers/assets.gen.dart';
import 'package:x_sport/app/features/paymnet/presentation/pages/payment_add_method_info_page.dart';
import 'package:x_sport/app/widgets/buttons/custom_radio_button.dart';
import 'package:x_sport/app/widgets/buttons/submit_button.dart';

class PaymentMethodPage extends StatelessWidget {
  PaymentMethodPage({super.key});
  final ValueNotifier<int> selectedValue = ValueNotifier<int>(1);
  Widget customRadio(int value, String label) {
    return InkWell(
      onTap: () {
        // selectedValue = value;
      },
      child: Container(
        width: 24.w, // Adjust the width as needed
        height: 24.w, // Adjust the height as needed
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: const Color(0xFFF6F6F6),
          border: Border.all(
            color: const Color(0xFFB6B6B6),
            width: 0.5.w,
          ),
        ),
        child: Center(
          child: selectedValue.value == 1
              ? Container(
                  width: 14.w, // Adjust the width as needed
                  height: 14.w, // Adjust the height as needed
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: selectedValue.value == 1
                        ? const Color(0xFF50ABFF)
                        : const Color(0xFFF6F6F6),
                    border: Border.all(
                      color: const Color(0xFFB6B6B6),
                      width: 0.5.w,
                    ),
                  ),
                )
              : null,
        ),
      ),
    );
  }

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
                  'اضافة وسيلة دفع',
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
              width: 370.w,
              padding: EdgeInsets.only(top: 51.h),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topRight,
                    child: Text(
                      'اختر وسيلة دفع',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(height: 28.w),
                  ValueListenableBuilder(
                    valueListenable: selectedValue,
                    builder: (context, value, child) {
                      return CustomRadioButton(
                        value: 1,
                        lable: 'Master card',
                        image: AssetsManager.images.payment.masterCardMethod,
                        onTap: (value) {
                          selectedValue.value = value;
                        },
                        seleceted: selectedValue.value,
                      );
                    },
                  ),
                  ValueListenableBuilder(
                    valueListenable: selectedValue,
                    builder: (context, value, child) {
                      return CustomRadioButton(
                        value: 2,
                        lable: 'PayPal',
                        image: AssetsManager.images.payment.paypalLogo,
                        onTap: (value) {
                          selectedValue.value = value;
                        },
                        seleceted: selectedValue.value,
                      );
                    },
                  ),
                  ValueListenableBuilder(
                    valueListenable: selectedValue,
                    builder: (context, value, child) {
                      return CustomRadioButton(
                        value: 3,
                        lable: 'Visa',
                        image: AssetsManager.images.payment.visaMethod,
                        onTap: (value) {
                          selectedValue.value = value;
                        },
                        seleceted: selectedValue.value,
                      );
                    },
                  ),
                  Container(
                    alignment: Alignment.topRight,
                    // height: 59.w,
                    width: 1.sw,
                    padding: EdgeInsets.only(
                        left: 10.w, right: 10.w, top: 12.w, bottom: 24.w),
                    margin: EdgeInsets.only(bottom: 20.h),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6.sp)),
                    child: SizedBox(
                      width: 276.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'خصوصية المستخدم',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(height: 6.w),
                          Text(
                            'نص يوضح سياسة خصوصية التطبيق المتبعة لحماية معلومات الدفع الشخصية للمستخدم',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                                color: const Color(0xFF595959),
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(height: 6.w),
                          Text(
                            'نص يوضح سياسة خصوصية التطبيق المتبعة لحماية معلومات الدفع الشخصية للمستخدم',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                                color: const Color(0xFF595959),
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 110.w),
                  Align(
                    alignment: Alignment.topLeft,
                    child: SubmitButton(
                        radius: 6,
                        height: 37.w,
                        minWidth: 109.w,
                        text: 'التالي',
                        textSize: 15,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      PaymentAddMethodInfoPage()));
                        }),
                  )
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
