import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport/app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:x_sport/app/features/auth/presentation/widgets/auth_header.dart';
import 'package:x_sport/app/features/auth/presentation/widgets/more_sign_in_options.dart';
import 'package:x_sport/app/widgets/buttons/submit_button.dart';
import 'package:x_sport/app/widgets/text_fields/no_border_textfield_widget.dart';
import 'package:x_sport/core/localization/locale_keys.g.dart';
import '../../../../../core/constance/app_constance.dart';
import '../../../../../core/utils/assets_managers/assets.gen.dart';
import '../../../../controllers/fileds_bloc.dart';

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
          width: 1.sw,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Positioned(
                top: 0.1.sh,
                height: 141.h,
                width: 1.sw,
                child: AuthHeader(
                  mainTitle: AssetsManager.images.auth.signIn
                      .image(height: 141.h, width: 287.w),
                  title: LocaleKeys.sign_in_to_xsports_with_your_id.tr(),
                  titleTopPadding: Platform.isAndroid ? 108.h : 100.h,
                  mainTitleFontSize: Platform.isAndroid ? 85.sp : 78.sp,
                  logoHeight: Platform.isAndroid ? 80.h : 75.h,
                  titleWidth: 320.w,
                  bottomPadding: Platform.isAndroid ? 18.h : 0,
                ),
              ),
              Positioned(
                top: 0.32.sh,
                width: 372.w,
                child: Container(
                  alignment: Alignment.bottomCenter,
                  height: 0.34.sh,
                  width: 372.w,
                  child: SingleChildScrollView(
                    controller: scrollController,
                    padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        NoBorderTextFieldWidget(
                          bttomPadding: Platform.isAndroid ? 30.h : 60.h,
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
                            hasForgotPassword: true),
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
