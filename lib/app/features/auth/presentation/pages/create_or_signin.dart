import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport/app/features/auth/presentation/pages/login_page.dart';
import 'package:x_sport/app/features/auth/presentation/pages/register_page.dart';
import 'package:x_sport/app/features/auth/presentation/widgets/more_sign_in_options.dart';
import 'package:x_sport/app/widgets/buttons/submit_button.dart';
import 'package:x_sport/core/constance/app_constance.dart';
import 'package:x_sport/core/localization/locale_keys.g.dart';
import 'package:x_sport/core/utils/assets_managers/assets.gen.dart';

class CreateOrSignIn extends StatelessWidget {
  const CreateOrSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
                top: -40.h,
                child: AssetsManager.images.welcomeBackGround.image(
                  height: 747.h,
                  width: 1.sw,
                  fit: BoxFit.fill,
                )),
            Positioned.directional(
              textDirection: TextDirection.ltr,
              start: 7.w,
              top: 253.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  AssetsManager.images.auth.xSportsLogo.image(
                    height: 71.h,
                    width: 68.w,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          LocaleKeys.welcome_to_xsports_app.tr(),
                          style: TextStyle(
                            color: XColors.black,
                            fontSize: 22.sp,
                            fontFamily: 'Tajawal',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          width: 381.w,
                          child: Text(
                            LocaleKeys.personalize_your_experience.tr(),
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              color: XColors.black,
                              fontSize: 16.sp,
                              fontFamily: 'Tajawal',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              width: 1.sw,
              bottom: 27.h,
              child: Column(
                children: [
                  SizedBox(
                    width: 338.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SubmitButton(
                          radius: 10,
                          minWidth: 338,
                          fillColor: XColors.primary,
                          textColor: Colors.white,
                          text: LocaleKeys.create.tr(),
                          textSize: 22,
                          fontWeight: FontWeight.w600,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const RegisterPage()),
                            );
                          },
                        ),
                        SizedBox(height: 20.h),
                        SubmitButton(
                          radius: 10,
                          minWidth: 338,
                          fillColor: XColors.inactive_button,
                          textColor: Colors.white,
                          text: LocaleKeys.sign_in.tr(),
                          textSize: 22,
                          fontWeight: FontWeight.w600,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginPage()),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  const MoreSignInOptions(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
