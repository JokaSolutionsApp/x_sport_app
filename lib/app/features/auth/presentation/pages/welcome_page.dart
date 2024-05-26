import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constance/app_constance.dart';
import '../../../../../core/utils/assets_managers/assets.gen.dart';
import '../../../../widgets/buttons/submit_button.dart';
import '../../components/welcome_screen_components/image_picker_component.dart';
import '../bloc/auth_bloc.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  String imageType = '';

  List<int> imageBytes = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF101010),
          automaticallyImplyLeading: false,
          elevation: 0,
          toolbarHeight: 0,
        ),
        body: SafeArea(
          child: Container(
            width: 1.sw,
            color: const Color(0xFF101010),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10.h),
                  child: AssetsManager.icons.appWhiteLogo.image(
                    height: 30.h,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 13.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SubmitButton(
                        radius: 35,
                        height: 28,
                        minWidth: 96.w,
                        fillColor: const Color(0xFF313131),
                        textColor: Colors.white,
                        fontWeight: FontWeight.w200,
                        hasBoarder: true,
                        text: 'skip',
                        onPressed: () {
                          context
                              .read<AuthBloc>()
                              .add(const AuthEvent.skipProfilePicture());
                        },
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Welcome Basheer',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              color: XColors.white,
                              fontSize: 21.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            'Tell us more',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              color: XColors.white,
                              fontSize: 21.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            width: 0.7.sw,
                            child: Text(
                              'the more we know, the more we can personalize your XSPORTS experience',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                color: XColors.grey,
                                fontSize: 10.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 0.5.h,
                  color: const Color(0xFF7A7A7A),
                ),
                SizedBox(height: 133.h),
                ImagePcikerComponent(
                  getImage: (bytes, type) {
                    imageBytes = bytes;
                    imageType = type;
                  },
                ),
                SizedBox(height: 21.h),
                Text(
                  'TAP TO SELECT',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    color: XColors.white,
                    fontSize: 21.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 100.h),
                Column(
                  children: [
                    Text(
                      'your preferences can be changed later via your profile',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        color: XColors.grey,
                        fontSize: 14.sp,
                      ),
                    ),
                    SizedBox(height: 15.h),
                    SubmitButton(
                      hasArrow: true,
                      radius: 28,
                      height: 50,
                      isButtonEnabled: true,
                      fillColor: XColors.primary,
                      textColor: Colors.white,
                      text: 'ابدأ الان',
                      onPressed: () {
                        context
                            .read<AuthBloc>()
                            .add(AuthEvent.completeRegistration(
                              imageBytes: imageBytes,
                              imageType: imageType,
                            ));
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
