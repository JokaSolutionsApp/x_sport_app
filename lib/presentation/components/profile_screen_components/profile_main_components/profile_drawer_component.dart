import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/constance/app_constance.dart';
import '../../../../data/dtos/user_dto/user_dto.dart';
import '../../../screens/edit_profile_screen.dart';
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
                Column(
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
          Container(
            margin: EdgeInsets.only(top: 26.h, bottom: 14.h, right: 55.w),
            child: Text(
              'تعديل الملف الشخصي',
              style: GoogleFonts.tajawal(
                color: Color(0xFF2E2E2E),
                fontSize: 17.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 17.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                IconTextButton(
                  text: 'معلومات الدفع',
                  icon: Icons.credit_card_outlined,
                  onPressed: () {},
                ),
                IconTextButton(
                  text: 'الارشيف',
                  icon: Icons.archive_outlined,
                  onPressed: () {},
                ),
                IconTextButton(
                  text: 'الانشطة',
                  icon: Icons.av_timer_outlined,
                  onPressed: () {},
                ),
                IconTextButton(
                  text: 'الاعدادات',
                  icon: Icons.settings_outlined,
                  onPressed: () {},
                ),
                IconTextButton(
                  text: 'الخصوصية',
                  icon: Icons.shield_outlined,
                  onPressed: () {},
                ),
                IconTextButton(
                  text: 'ترقية الى بريميوم',
                  icon: Icons.diamond_outlined,
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
        ],
      ),
    );
  }
}
