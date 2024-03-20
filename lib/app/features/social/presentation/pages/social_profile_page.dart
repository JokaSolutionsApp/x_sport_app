import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constance/app_constance.dart';
import '../../../profile/presentation/components/user_profile_screens_components/user_profile_tabbar_component.dart';
import '../../components/icon_button_widget.dart';
import '../../components/social_intrinsic_height_component.dart';
import '../../components/text_button_widget.dart';

class SocialProfilePage extends StatefulWidget {
  const SocialProfilePage({super.key});

  @override
  State<SocialProfilePage> createState() => _SocialProfilePageState();
}

class _SocialProfilePageState extends State<SocialProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SocialIntrinsicHeightComponent(
      image: 'https://picsum.photos/1920/1080',
      child: Column(
        children: [
          SizedBox(
            height: 65.h,
          ),
          SizedBox(
            width: 422.w,
            child: Column(
              children: [
                const Text(
                  'اسم المستخدم',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Text(
                  'الموقع الجغرافي',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    color: XColors.secondary_text_color,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 19.h,
                ),
                const IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'المبارايات',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            '37',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      VerticalDivider(
                        color: Colors.black,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'المتابَعون',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            '472',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      VerticalDivider(
                        color: Colors.black,
                      ),
                      Column(
                        children: [
                          Text(
                            'المتابعون',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            '530K',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 32.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButtonWidget(
                      onTap: () {},
                      icon: Icons.message,
                    ),
                    SizedBox(
                      width: 23.w,
                    ),
                    TextButtonWidget(
                      buttonWidth: 131.w,
                      text: 'متابعة',
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(
                      width: 23.w,
                    ),
                    IconButtonWidget(
                      onTap: () {},
                      icon: Icons.share,
                    ),
                  ],
                ),
                UserProfileTabBarComponent(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
