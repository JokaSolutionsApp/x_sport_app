import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport/app/features/auth/presentation/widgets/auth_header.dart';
import 'package:x_sport/app/features/auth/presentation/widgets/more_sign_in_options.dart';
import 'package:x_sport/app/widgets/text_fields/no_border_textfield_widget.dart';
import 'package:x_sport/core/localization/locale_keys.g.dart';

import '../../../../../core/constance/app_constance.dart';
import '../../../../../core/utils/assets_managers/assets.gen.dart';
import '../../../../../main.dart';
import '../../../../controllers/fileds_bloc.dart';
import '../../../../widgets/buttons/outlined_button.dart';
import '../../../../widgets/buttons/submit_button.dart';
import '../../../../widgets/buttons/underline_button.dart';
import '../../../../widgets/text_fields/textfield_widget.dart';
import '../../components/intrinsic_height_component.dart';
import '../bloc/auth_bloc.dart';
import 'register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with WidgetsBindingObserver {
  late TextEditingController email;
  late TextEditingController password;
  late ScrollController scrollController;
  late FocusNode passwordFocusNode;
  late FocusNode emailFocusNode;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    scrollController = ScrollController();
    email = TextEditingController();
    password = TextEditingController();
    emailFocusNode = FocusNode();
    passwordFocusNode = FocusNode();
    getUserLocation();
  }

  getUserLocation() async {
    await signInStream.updateLocation();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);

    email.dispose();
    password.dispose();
    passwordFocusNode.dispose();
    emailFocusNode.dispose();
    super.dispose();
  }

  @override
  void didChangeMetrics() {
    super.didChangeMetrics();
    final value = MediaQuery.of(context).viewInsets.bottom;
    if (value > 0 && passwordFocusNode.hasFocus) {
      scrollController.animateTo(
        scrollController.position.maxScrollExtent / 4,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        toolbarHeight: 50.h,
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: AssetsManager.icons.arBackArrow.image()),
          )
        ],
      ),
      body: SafeArea(
        child: SizedBox(
          height: 1.sh,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              AuthHeader(
                mainTitle: LocaleKeys.sign_in.tr(),
                title: LocaleKeys.sign_in_to_xsports_with_your_id.tr(),
                mainTitleFontSize: 85.sp,
                logoHeight: 80.sp,
                titleWidth: 320.w,
                bottomPadding: 28.h,
              ),
              Container(
                alignment: Alignment.bottomCenter,
                height: 0.34.sh,
                width: 372.w,
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        NoBorderTextFieldWidget(
                          focusNode: emailFocusNode,
                          labelText: LocaleKeys.email.tr(),
                          controller: email,
                          keyboardType: TextInputType.emailAddress,
                          textStream: signInStream.email,
                          onChanged: signInStream.changeEmail,
                          hintText: 'example@gmail.com',
                        ),
                        NoBorderTextFieldWidget(
                          bttomPadding: 10.h,
                          focusNode: passwordFocusNode,
                          labelText: LocaleKeys.password.tr(),
                          controller: password,
                          keyboardType: TextInputType.visiblePassword,
                          textStream: signInStream.password,
                          onChanged: signInStream.changePassword,
                          isObscureText: true,
                          hintText: '****************',
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              minimumSize: Size(50.w, 30.h),
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              alignment: Alignment.centerLeft),
                          onPressed: () {
                            context
                                .read<AuthBloc>()
                                .add(const AuthEvent.resendconfirmUserEmail());
                          },
                          child: Text(
                            LocaleKeys.forgot_your_password.tr(),
                            style: TextStyle(
                                color: XColors.grey5,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w400,
                                height: 0,
                                decoration: TextDecoration.underline),
                          ),
                        ),
                        SizedBox(height: 76.h),
                        Align(
                          alignment: Alignment.center,
                          child: StreamBuilder(
                            stream: signInStream.loginValid,
                            builder: (context, snapshot) {
                              final isButtonEnabled = snapshot.data ?? false;
                              print("isButtonEnabled $isButtonEnabled");
                              return SubmitButton(
                                isButtonEnabled: isButtonEnabled,
                                radius: 10.sp,
                                fillColor: isButtonEnabled
                                    ? XColors.primary
                                    : XColors.inactive_button,
                                textColor: Colors.white,
                                text: LocaleKeys.sign_in.tr(),
                                textSize: 22,
                                fontWeight: FontWeight.w600,
                                onPressed: () {
                                  if (isButtonEnabled) {
                                    context
                                        .read<AuthBloc>()
                                        .add(const AuthEvent.login());
                                  }
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const MoreSignInOptions(),
            ],
          ),
        ),
      ),
    );
  }
}
  // @override
  // Widget build(BuildContext context) {
  //   return IntrinsicHeightComponent(
  //     title: 'تسجيل الدخول',
  //     child: SingleChildScrollView(
  //       controller: scrollController,
  //       child: Padding(
  //         padding: EdgeInsets.only(
  //             bottom: MediaQuery.of(context).viewInsets.bottom / 1.8),
  //         child: SizedBox(
  //           width: 329.w,
  //           child: Column(
  //             children: [
  //               TextFieldWidget(
  //                 labelText: 'الرقم / البريد الالكتروني',
  //                 controller: email,
  //                 keyboardType: TextInputType.emailAddress,
  //                 textStream: signInStream.emailPhone,
  //                 onChanged: signInStream.changeEmailPhone,
  //               ),
  //               TextFieldWidget(
  //                 focusNode: passwordFocusNode,
  //                 labelText: 'كلمة المرور',
  //                 controller: password,
  //                 keyboardType: TextInputType.name,
  //                 textStream: signInStream.password,
  //                 onChanged: signInStream.changePassword,
  //                 isObscureText: true,
  //               ),
  //               SizedBox(height: 30.h),
  //               StreamBuilder(
  //                   stream: signInStream.loginValid,
  //                   builder: (context, snapshot) {
  //                     final isButtonEnabled = snapshot.data ?? false;
  //                     return SubmitButton(
  //                       isButtonEnabled: isButtonEnabled,
  //                       fillColor:
  //                           isButtonEnabled ? XColors.primary : Colors.grey,
  //                       textColor: Colors.white,
  //                       text: 'تسجيل الدخول',
  //                       onPressed: () {
  //                         context.read<AuthBloc>().add(const AuthEvent.login());
  //                       },
  //                     );
  //                   }),
  //               SizedBox(height: 40.h),
  //               SizedBox(
  //                 width: 329.w,
  //                 height: 130.h,
  //                 child: Column(
  //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                   children: [
  //                     OutlinButton(
  //                       isButtonEnabled: true,
  //                       fillColor: XColors.primary,
  //                       textColor: XColors.Background_Color1,
  //                       image: AssetsManager.icons.google,
  //                       text: 'تسجيل الدخول عبر جوجل',
  //                       onPressed: () {
  //                         context
  //                             .read<AuthBloc>()
  //                             .add(const AuthEvent.googleLogin());
  //                       },
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //               SizedBox(height: 26.h),
  //               UnderlinButton(
  //                 buttonText: 'ليس لديك حساب؟! سجل الان!',
  //                 onPressed: () {
  //                   Navigator.of(navigatorKey.currentContext!).push(
  //                     MaterialPageRoute(
  //                         builder: (context) => const RegisterPage()),
  //                   );
  //                 },
  //               ),
  //             ],
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }
// }
