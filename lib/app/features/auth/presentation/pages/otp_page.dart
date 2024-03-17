import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:pin_code_fields/pin_code_fields.dart';
import '../../../../../core/constance/app_icons_icons.dart';
import '../../../../../core/services/locator/service_locator.dart';
import '../../../../../core/services/secure_storage_service.dart.dart';
import '../bloc/auth_bloc.dart';
import '../../../../../main.dart';
import '../../../../../core/constance/app_constance.dart';
import '../../../../controllers/fileds_bloc.dart';
import '../../../../widgets/buttons/submit_button.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({super.key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  TextEditingController code = TextEditingController();

  StreamController<ErrorAnimationType>? errorController;
  String email = '';
  @override
  void initState() {
    getEmail();
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
  }

  getEmail() async {
    email =
        await sl<SecureStorageService>().read('email') ?? 'example@gmail.com';
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100.h,
        automaticallyImplyLeading: false,
        elevation: 0,
        leadingWidth: 70.w,
        flexibleSpace: Container(
          margin: EdgeInsets.symmetric(
            vertical: 30.h,
          ),
          padding: EdgeInsets.symmetric(horizontal: 15.h),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.sp),
                    color: Colors.white,
                    border: Border.all(color: const Color(0xFFBBBBBB))),
                child: IconButton(
                  iconSize: 30.sp,
                  onPressed: () {
                    Navigator.of(navigatorKey.currentContext!).pop();
                  },
                  icon: const Icon(Icons.arrow_back_ios_new_outlined),
                ),
              ),
              SizedBox(width: 84.w),
              Text(
                'تأكيد الحساب',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Container(
              height: 112.w,
              width: 112.w,
              margin: EdgeInsets.only(bottom: 52.h),
              decoration: const BoxDecoration(
                  color: XColors.Background_Color1, shape: BoxShape.circle),
              child: Icon(
                AppIcons.file_lock,
                color: Colors.white,
                size: 50.spMin,
              ),
            ),
            Text(
              'قم بادخال رمز التأكيد',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 13.h),
            SizedBox(
              width: 288.w,
              child: Text(
                textAlign: TextAlign.center,
                'ادخل رمز التأكيد الذي قمنا بارساله الى بريدك الالكتروني',
                style: TextStyle(
                    color: XColors.otp_subtitle_color,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              width: 322.w,
              height: 38.h,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 17.w),
              margin: EdgeInsets.only(top: 40.h, bottom: 43.h),
              decoration: BoxDecoration(
                  color: XColors.otp_field_fill_color,
                  borderRadius: BorderRadius.circular(7),
                  border: Border.all(
                      color: XColors.otp_field_border_color, width: 0.5.w)),
              child: Text(
                email,
                style: TextStyle(
                    color: XColors.otp_subtitle_color,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 0.05.sw),
                child: PinCodeTextField(
                  appContext: context,
                  textStyle: const TextStyle(
                    color: XColors.otp_field_border_color,
                  ),
                  pastedTextStyle: const TextStyle(
                    color: XColors.otp_field_border_color,
                  ),
                  length: 6,
                  blinkWhenObscuring: true,
                  animationType: AnimationType.fade,
                  validator: (v) {
                    if (v!.length < 6) {
                      return "ادخل رمز صحيح";
                    } else {
                      return null;
                    }
                  },
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(3.sp),
                    fieldHeight: 0.08.sh,
                    fieldWidth: 0.14.sw,
                    borderWidth: 0.7.w,
                    inactiveBorderWidth: 0.7.w,
                    activeBorderWidth: 0.7.w,
                    selectedBorderWidth: 0.7.w,
                    inactiveFillColor: XColors.otp_field_fill_color,
                    errorBorderColor: Colors.transparent,
                    inactiveColor: XColors.otp_field_border_color,
                    activeFillColor: XColors.otp_field_fill_color,
                    activeColor: XColors.otp_field_fill_color,
                    selectedFillColor: XColors.otp_field_fill_color,
                    selectedColor: Colors.white,
                  ),
                  hintStyle: const TextStyle(
                    color: XColors.otp_field_hint_color,
                  ),
                  hintCharacter: '8',
                  cursorColor: Colors.black,
                  animationDuration: const Duration(milliseconds: 300),
                  enableActiveFill: true,
                  errorAnimationController: errorController,
                  controller: code
                    ..selection = TextSelection.collapsed(
                        offset: code.text.length,
                        affinity: TextAffinity.downstream),
                  keyboardType: TextInputType.number,
                  boxShadows: [
                    BoxShadow(
                        offset: Offset(0, 1.sp),
                        color: Colors.black12,
                        blurRadius: 2.sp,
                        spreadRadius: 2.sp)
                  ],
                  onCompleted: (v) {},
                  onChanged: (value) {
                    print(value);

                    registerStream.changecode(value);
                  },
                  beforeTextPaste: (text) {
                    return true;
                  },
                )),
            SizedBox(height: 16.h),
            TextButton(
              style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: Size(50.w, 30.h),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  alignment: Alignment.centerLeft),
              onPressed: null,
              child: Column(
                children: [
                  TextButton(
                    onPressed: () {
                      context
                          .read<AuthBloc>()
                          .add(const AuthEvent.resendconfirmUserEmail());
                    },
                    child: Text(
                      'ارسال مرة اخرى',
                      style: TextStyle(
                        color: XColors.primary,
                        fontSize: 18.sp,
                        fontFamily: 'Tajawal',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                  Container(
                    width: 114.w,
                    height: 1,
                    color: XColors.primary,
                  )
                ],
              ),
            ),
            SizedBox(height: 56.h),
            SubmitButton(
              radius: 24,
              isButtonEnabled: true,
              fillColor: XColors.otp_primary,
              minWidth: 210,
              height: 52,
              textSize: 18,
              text: 'تأكيد الحساب',
              onPressed: () {
                context
                    .read<AuthBloc>()
                    .add(const AuthEvent.confirmUserEmail());
              },
            ),
          ],
        ),
      ),
    );
  }
}
