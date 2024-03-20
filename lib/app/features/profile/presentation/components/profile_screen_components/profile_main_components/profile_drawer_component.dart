import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../archives/presentation/pages/all_archive_page.dart';
import '../../../../../auth/domain/enitites/favorite_sport_entity.dart';
import '../../../../../auth/domain/enitites/user_entity.dart';
import '../../../../../logs/presentation/pages/all_logs_page.dart';
import '../../../../../paymnet/presentation/pages/payment_info_page.dart';
import '../../../../../settings/presentation/pages/all_settings_privacy_page.dart';

import '../../../../../../../core/constance/app_constance.dart';
import '../../../../../../../core/constance/app_icons_icons.dart';
import '../../../pages/edit_profile_page.dart';
import '../../../../../../widgets/buttons/icon_text_button.dart';

class ProfileDrawerComponent extends StatelessWidget {
  final UserEntity user;
  final List<FavoriteSportEntity> favoriteSports;
  const ProfileDrawerComponent(
      {super.key, required this.user, required this.favoriteSports});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
      ),
      width: 321.w,
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(top: 10),
            height: 132.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(14.sp),
                  bottomRight: Radius.circular(14.sp),
                ),
                gradient: const LinearGradient(colors: [
                  XColors.Background_Color1,
                  XColors.Background_Color2
                ], begin: Alignment.centerLeft, end: Alignment.centerRight)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 8.0.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'اسم المستخدم',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            minimumSize: Size(50.w, 30.h),
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            alignment: Alignment.centerLeft),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EditProfilePage(
                                        user: user,
                                        favoriteSports: favoriteSports,
                                      )));
                        },
                        child: Row(
                          children: [
                            const Text(
                              'تعديل الملف الشخصي',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 9,
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                            SizedBox(width: 3.w),
                            Icon(
                              Icons.edit,
                              color: Colors.white,
                              size: 12.sp,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 12.w),
                  alignment: Alignment.center,
                  width: 80.w,
                  height: 80.w,
                  decoration: const BoxDecoration(
                    // image: DecorationImage(image: NetworkImage(user!.image)),
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    'BA',
                    style: TextStyle(
                      color: XColors.Background_Color1,
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w500,
                      height: 3.2.w,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 17.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 5.w),
                  child: IconTextButton(
                    hasDivider: false,
                    text: 'تعديل الملف الشخصي',
                    icon: Icons.edit,
                    iconSize: 21,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EditProfilePage(
                                    user: user,
                                    favoriteSports: favoriteSports,
                                  )));
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 5.w),
                  child: IconTextButton(
                    text: 'معلومات الدفع',
                    icon: AppIcons.credit,
                    iconSize: 21,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PaymentInfoPage()));
                    },
                  ),
                ),
                IconTextButton(
                  text: 'الارشيف',
                  icon: AppIcons.archive,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AllArchivePage()));
                  },
                ),
                IconTextButton(
                  text: 'الانشطة',
                  icon: AppIcons.clock_activity,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AllLogsPage()));
                  },
                ),
                IconTextButton(
                  text: 'الاعدادات',
                  icon: AppIcons.settings,
                  onPressed: () {},
                ),
                IconTextButton(
                  text: 'الخصوصية',
                  icon: AppIcons.privacy,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const AllSettingsPrivacyPage()));
                  },
                ),
                IconTextButton(
                  text: 'ترقية الى بريميوم',
                  icon: AppIcons.diamond,
                  color: XColors.primary,
                  onPressed: () {},
                ),
                Divider(
                  indent: 45.w,
                  endIndent: 45.w,
                  color: const Color(0xFFD7D7D7),
                  thickness: 0.5.w,
                ),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.only(bottom: 21.h),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: IconTextButton(
                hasDivider: false,
                text: 'تسجيل الخروج',
                icon: Icons.close,
                fontSize: 17,
                color: const Color(0xFFF44336),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
