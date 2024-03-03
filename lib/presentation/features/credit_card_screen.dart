import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_sport/core/constance/app_constance.dart';
import 'package:x_sport/core/constance/app_functions.dart';
import 'package:x_sport/core/utils/assets_managers/assets.gen.dart';
import 'package:x_sport/main.dart';
import 'package:x_sport/presentation/controllers/fileds_bloc.dart';
import 'package:x_sport/presentation/features/auth/presentation/pages/otp_page.dart';
import 'package:x_sport/presentation/widgets/buttons/submit_button.dart';
import 'package:x_sport/presentation/widgets/text_fields/credit_text_field.dart';

class CreditCardScreen extends StatefulWidget {
  const CreditCardScreen({super.key});

  @override
  State<CreditCardScreen> createState() => _CreditCardScreenState();
}

class _CreditCardScreenState extends State<CreditCardScreen> {
  TextEditingController name = TextEditingController();

  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

  TextEditingController confirmPassword = TextEditingController();

  TextEditingController phone = TextEditingController();

  var isChecked = ValueNotifier(false);
  @override
  void initState() {
    getUserLocation();
    super.initState();
  }

  getUserLocation() async {
    await registerStream.updateLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [XColors.Background_Color1, XColors.Background_Color2],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight)),
        height: 1.sh,
        child: Stack(
          children: [
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.only(top: 120.h),
                  width: 1.sw,
                  height: 737.h,
                  decoration: BoxDecoration(
                      color: Color(0xFFF6F7F9),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60.sp),
                          topRight: Radius.circular(60.sp))),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        CreditTextField(
                          labelText: 'رقم البطاقة',
                          controller: name,
                          keyboardType: TextInputType.emailAddress,
                          textStream: registerStream.name,
                          onChanged: registerStream.changeName,
                        ),
                        CreditTextField(
                          labelText: 'رقم البطاقة',
                          controller: email,
                          keyboardType: TextInputType.emailAddress,
                          textStream: registerStream.email,
                          onChanged: registerStream.changeEmail,
                        ),
                        CreditTextField(
                          labelText: 'رقم البطاقة',
                          controller: phone,
                          keyboardType: TextInputType.number,
                          textStream: registerStream.phone,
                          onChanged: registerStream.changePhone,
                        ),
                        SizedBox(height: 10.h),
                        SizedBox(
                          width: 380.w,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  textAlign: TextAlign.end,
                                  'حفظ معلومات الدفع لهذا الحساب',
                                  style: GoogleFonts.tajawal(
                                    textStyle: TextStyle(
                                        color: XColors.Outline_Button_Color,
                                        fontSize: 17.sp,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                ValueListenableBuilder(
                                    valueListenable: isChecked,
                                    builder: (context, value, child) {
                                      return Transform.scale(
                                        scale: 0.9.w,
                                        child: Checkbox(
                                          activeColor:
                                              XColors.Background_Color2,
                                          value: isChecked.value,
                                          onChanged: (value) {
                                            isChecked.value = !isChecked.value;
                                            registerStream
                                                .changePrivacy(value!);
                                          },
                                        ),
                                      );
                                    }),
                              ]),
                        ),
                        SizedBox(height: 8.h),
                        SizedBox(
                          width: 360.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'سيسهل عليك تفعيل هذا الخيار اجراءات الدفع في \nالحجوزات القادمة.',
                                textAlign: TextAlign.end,
                                style: GoogleFonts.tajawal(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF959595)),
                              ),
                              Icon(Icons.warning),
                            ],
                          ),
                        ),
                        SizedBox(height: 48.w),
                        StreamBuilder(
                          stream: registerStream.registerIsValid,
                          builder: (context, snapshot) {
                            final isButtonEnabled = snapshot.data ?? false;
                            return SubmitButton(
                              minWidth: 232.w,
                              height: 49.w,
                              radius: 12,
                              isButtonEnabled: isButtonEnabled,
                              fillColor: isButtonEnabled
                                  ? XColors.Submit_Button_Color
                                  : Colors.grey,
                              textColor: Colors.white,
                              text: 'انشر',
                              onPressed: () {
                                EasyLoadingInit.startLoading();
                                Future.delayed(Duration(seconds: 2), () {
                                  EasyLoading.dismiss();
                                  Navigator.of(navigatorKey.currentContext!)
                                      .push(
                                    MaterialPageRoute(
                                        builder: (context) => const OtpPage()),
                                  );
                                });
                                // context.read<UserBloc>().add(const SignUpEvent());
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                )),
            Positioned(
                right: 79.w,
                top: 110.h,
                width: 271.w,
                height: 174.h,
                child: AssetsManager.images.payment.creditCard.image()),
          ],
        ),
      ),
    );
  }
}