import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:x_sport/core/constance/app_constance.dart';
import 'package:x_sport/core/utils/assets_managers/assets.gen.dart';
import 'package:x_sport/app/features/profile/presentation/components/user_profile_screens_components/user_profile_tabbar_component.dart';
import 'package:x_sport/app/widgets/buttons/submit_button.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Container(
          height: 1.sh,
          width: 1.sw,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [XColors.Background_Color1, XColors.Background_Color2],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight),
          ),
          child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            children: [
              Positioned(
                  top: 0.h,
                  width: 1.sw,
                  height: 0.3.sh,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image:
                            AssetsManager.images.avatars.avatar5.image().image,
                      ),
                    ),
                    child: ClipRect(
                      // Clip the effect to the bounds of the container
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                            sigmaX: 5,
                            sigmaY: 5), // Adjust the blur level if needed
                        child: Container(
                          decoration: BoxDecoration(
                            // color: Colors.transparent,

                            // Define the linear gradient
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                const Color(0xFFDCDCDC)
                                    .withOpacity(0.22), // Light gray
                                const Color(0xFFE7E7E7)
                                    .withOpacity(0.13), // Slightly lighter gray
                                Colors.white, // Pure white
                              ],
                              stops: const [
                                0.52,
                                0.85,
                                1.0
                              ], // Adjusted stops based on your percentages
                            ),
                          ),
                          // This container can be transparent as the gradient is part of the decoration
                        ),
                      ),
                    ),
                  )),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    width: 1.sw,
                    height: 0.88.sh,
                    decoration: BoxDecoration(
                        color: const Color(0xFFF6F7F9),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(60.sp),
                            topRight: Radius.circular(60.sp))),
                    child: Stack(
                        alignment: Alignment.center,
                        clipBehavior: Clip.none,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 70.h),
                            child: Column(
                              children: [
                                Text(
                                  "اسم المستخدم",
                                  style: TextStyle(
                                      color: XColors.Background_Color1,
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  "الموقع الجغرافي",
                                  style: TextStyle(
                                      color: const Color(0xFF979797),
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(height: 24.w),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          'المباريات',
                                          style: TextStyle(
                                              color: XColors.Background_Color1,
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Text(
                                          '0',
                                          style: TextStyle(
                                              color: XColors.Background_Color1,
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      color: Colors.black,
                                      width: 0.3.w,
                                      height: 50.h,
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          'المتابعين',
                                          style: TextStyle(
                                              color: XColors.Background_Color1,
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Text(
                                          '472',
                                          style: TextStyle(
                                              color: XColors.Background_Color1,
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      color: Colors.black,
                                      width: 0.3.w,
                                      height: 50.h,
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          'المتابعون',
                                          style: TextStyle(
                                              color: XColors.Background_Color1,
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Text(
                                          '530K',
                                          style: TextStyle(
                                              color: XColors.Background_Color1,
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 14.w),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    GestureDetector(
                                      child: Container(
                                        alignment: Alignment.center,
                                        padding: EdgeInsets.all(6.w),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: const Color(0xFFD1D1D1)),
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                        ),
                                        child: Icon(
                                          Icons.message,
                                          color: XColors.primary,
                                          size: 24.sp,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 24.w),
                                    SubmitButton(
                                      text: 'متابعة',
                                      fillColor: XColors.primary,
                                      radius: 32,
                                      height: 38,
                                      minWidth: 134,
                                      onPressed: () {},
                                    ),
                                    SizedBox(width: 24.w),
                                    GestureDetector(
                                      child: Container(
                                        alignment: Alignment.center,
                                        padding: EdgeInsets.all(6.w),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: const Color(0xFFD1D1D1)),
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                        ),
                                        child: Icon(
                                          Icons.share,
                                          color: XColors.primary,
                                          size: 24.sp,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const UserProfileTabBarComponent(),
                              ],
                            ),
                          ),
                          Positioned(
                            top: -55.w,
                            height: 110.w,
                            width: 110.w,
                            child: Container(
                              child: CircleAvatar(
                                backgroundImage: AssetsManager
                                    .images.social.socialImage
                                    .image(fit: BoxFit.cover)
                                    .image,
                              ),
                            ),
                          ),
                        ]),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
