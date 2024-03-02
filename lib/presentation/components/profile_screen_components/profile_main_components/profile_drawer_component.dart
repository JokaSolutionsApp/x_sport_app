import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_sport/presentation/features/auth/data/dtos/user_dto/user_dto.dart';
import 'package:x_sport/presentation/features/archives/presentation/pages/all_archive_screen.dart';
import 'package:x_sport/presentation/features/logs/presentation/pages/all_logs_screen.dart';
import 'package:x_sport/presentation/features/paymnet/presentation/pages/payment_info_screen.dart';
import 'package:x_sport/presentation/features/settings/presentation/pages/all_settings_privacy_screen.dart';

import '../../../../core/constance/app_constance.dart';
import '../../../../core/constance/app_icons_icons.dart';
import '../../../features/profile/presentation/pages/edit_profile_screen.dart';
import '../../../widgets/buttons/icon_text_button.dart';

class ProfileDrawerComponent extends StatelessWidget {
  final User? user;
  final List<FavoritSport>? favoriteSports;
  const ProfileDrawerComponent({super.key, this.user, this.favoriteSports});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: RoundedRectangleBorder(
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
            padding: EdgeInsets.only(top: 10),
            height: 132.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(14.sp),
                  bottomRight: Radius.circular(14.sp),
                ),
                gradient: LinearGradient(colors: [
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
                      Text(
                        'اسم المستخدم',
                        style: GoogleFonts.tajawal(
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
                                  builder: (context) => EditProfileScreen(
                                        user: user,
                                        favoriteSports: favoriteSports,
                                      )));
                        },
                        child: Row(
                          children: [
                            Text(
                              'تعديل الملف الشخصي',
                              style: GoogleFonts.tajawal(
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
                  decoration: BoxDecoration(
                    // image: DecorationImage(image: NetworkImage(user!.image)),
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    'BA',
                    style: GoogleFonts.tajawal(
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
                              builder: (context) => EditProfileScreen(
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
                              builder: (context) => PaymentInfoScreen()));
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
                            builder: (context) => AllArchiveScreen()));
                  },
                ),
                IconTextButton(
                  text: 'الانشطة',
                  icon: AppIcons.clock_activity,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AllLogsScreen()));
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
                            builder: (context) => AllSettingsPrivacyScreen()));
                  },
                ),
                IconTextButton(
                  text: 'ترقية الى بريميوم',
                  icon: AppIcons.diamond,
                  color: XColors.Submit_Button_Color,
                  onPressed: () {},
                ),
                Divider(
                  indent: 45.w,
                  endIndent: 45.w,
                  color: Color(0xFFD7D7D7),
                  thickness: 0.5.w,
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(bottom: 21.h),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: IconTextButton(
                hasDivider: false,
                text: 'تسجيل الخروج',
                icon: Icons.close,
                fontSize: 17,
                color: Color(0xFFF44336),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
