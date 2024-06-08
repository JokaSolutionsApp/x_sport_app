import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:x_sport/app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:x_sport/core/constance/app_constance.dart';
import 'package:x_sport/core/localization/locale_externsion.dart';
import 'package:x_sport/core/localization/locale_keys.g.dart';
import 'package:x_sport/core/utils/assets_managers/assets.gen.dart';

class MoreSignInOptions extends StatelessWidget {
  const MoreSignInOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: 27.h, top: Platform.isAndroid ? 54.h : 0.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            width: 338.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 27.h),
                  child: Align(
                    alignment: context.locale.isRTL
                        ? Alignment.topRight
                        : Alignment.topLeft,
                    child: RichText(
                      text: TextSpan(
                        text: LocaleKeys.more.tr(),
                        style: TextStyle(
                          color: XColors.black,
                          fontSize: 14.sp,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: " ${LocaleKeys.sign_in_option.tr()}",
                            style: const TextStyle(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          TextSpan(
                            text: " ${LocaleKeys.options.tr()}",
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 26.h),
                  child: SizedBox(
                    width: 200.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                            onTap: () async {
                              // try {
                              //   final appleCredential =
                              //       await SignInWithApple.getAppleIDCredential(
                              //     scopes: [
                              //       AppleIDAuthorizationScopes.email,
                              //       AppleIDAuthorizationScopes.fullName,
                              //     ],
                              //   );

                              //   final oauthCredential =
                              //       OAuthProvider("apple.com").credential(
                              //     idToken: appleCredential.identityToken,
                              //     accessToken:
                              //         appleCredential.authorizationCode,
                              //   );

                              //   final UserCredential userCredential =
                              //       await FirebaseAuth.instance
                              //           .signInWithCredential(oauthCredential);

                              //   print('User signed in: ${userCredential.user}');
                              // } catch (e) {
                              //   print('Error with Apple Sign-In: $e');
                              // }
                            },
                            child: AssetsManager.icons.apple.image()),
                        GestureDetector(
                            onTap: () {
                              context
                                  .read<AuthBloc>()
                                  .add(AuthEvent.googleLogin());
                            },
                            child: AssetsManager.icons.google.image()),
                        GestureDetector(
                            child: AssetsManager.icons.facebook.image()),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 34.h),
            child: RichText(
              text: TextSpan(
                text: LocaleKeys.accepting_our.tr(),
                style: TextStyle(
                  color: XColors.black,
                  fontSize: 12.sp,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: " ${LocaleKeys.terms.tr()}",
                    style: const TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  TextSpan(
                    text: " ${LocaleKeys.of_use_and.tr()}",
                  ),
                  TextSpan(
                    text: " ${LocaleKeys.privacy_policy.tr()}",
                    style: const TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
