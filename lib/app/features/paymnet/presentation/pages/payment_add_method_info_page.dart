import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport/app/features/academy/presentation/components/register_success_dialog.dart';

import '../../../../../core/constance/app_icons_icons.dart';
import '../../../../../core/utils/assets_managers/assets.gen.dart';
import '../../../../controllers/fileds_bloc.dart';
import '../../../../widgets/buttons/submit_button.dart';
import '../../../../widgets/text_fields/add_payment_field.dart';

class PaymentAddMethodInfoPage extends StatelessWidget {
  PaymentAddMethodInfoPage({super.key});
  final ValueNotifier<int> selectedValue = ValueNotifier<int>(1);
  final TextEditingController email = TextEditingController();

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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AssetsManager.images.payment.paypalLogo.image(),
                        Text(
                          'معلومات البطاقة الشخصية',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  AddPaymentField(
                    labelText: '',
                    controller: email,
                    keyboardType: TextInputType.emailAddress,
                    textStream: registerStream.email,
                    onChanged: registerStream.changeEmail,
                  ),
                  AddPaymentField(
                    labelText: '',
                    controller: email,
                    keyboardType: TextInputType.emailAddress,
                    textStream: registerStream.email,
                    onChanged: registerStream.changeEmail,
                  ),
                  AddPaymentField(
                    labelText: '',
                    controller: email,
                    keyboardType: TextInputType.emailAddress,
                    textStream: registerStream.email,
                    onChanged: registerStream.changeEmail,
                  ),
                  AddPaymentField(
                    labelText: '',
                    controller: email,
                    keyboardType: TextInputType.emailAddress,
                    textStream: registerStream.email,
                    onChanged: registerStream.changeEmail,
                  ),
                  AddPaymentField(
                    labelText: '',
                    controller: email,
                    keyboardType: TextInputType.emailAddress,
                    textStream: registerStream.email,
                    onChanged: registerStream.changeEmail,
                  ),
                  SizedBox(height: 50.w),
                  Align(
                    alignment: Alignment.topLeft,
                    child: SubmitButton(
                      radius: 6,
                      height: 37.w,
                      minWidth: 109.w,
                      text: 'اضافة',
                      textSize: 15,
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return const RegisterSuccessDialog();
                          },
                        );
                      },
                    ),
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
