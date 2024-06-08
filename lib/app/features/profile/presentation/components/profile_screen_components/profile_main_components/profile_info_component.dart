import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport/main.dart';

import '../../../../../../../core/constance/app_constance.dart';
import '../../../../../../../core/utils/assets_managers/assets.gen.dart';
import '../../../../../../widgets/rectangle_container.dart';
import '../../../../../auth/domain/enitites/favorite_sport_entity.dart';
import '../../../../../auth/domain/enitites/user_profile_entity.dart';
import '../../../pages/edit_profile_page.dart';
import '../../../pages/profile_ranking_page.dart';
import 'profile_stats_component.dart';

class ProfileInfoComponent extends StatefulWidget {
  final UserProfileEntity userProfile;
  final int? points;
  final List<FavoriteSportEntity> favoriteSports;
  const ProfileInfoComponent(
      {super.key,
      required this.userProfile,
      required this.points,
      required this.favoriteSports});

  @override
  State<ProfileInfoComponent> createState() => _ProfileInfoComponentState();
}

class _ProfileInfoComponentState extends State<ProfileInfoComponent> {
  @override
  initState() {
    super.initState();
    getInitials();
  }

  String? initials;
  getInitials() {
    final name = widget.userProfile.user?.name ?? '';
    if (name.isNotEmpty) {
      final nameParts = name.split(' ');
      if (nameParts.length >= 2) {
        final firstInitial = nameParts[0].isNotEmpty ? nameParts[0][0] : '';
        final lastInitial = nameParts[1].isNotEmpty ? nameParts[1][0] : '';
        setState(() {
          initials = '$firstInitial$lastInitial';
        });
      } else if (nameParts.length == 1) {
        final firstInitial = nameParts[0].isNotEmpty ? nameParts[0][0] : '';
        setState(() {
          initials = firstInitial;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return RectangleContainer(
      bottomMargin: 10.h,
      child: Padding(
        padding: EdgeInsets.all(10.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 40.h),
                      child: Row(
                        children: [
                          GestureDetector(
                              onTap: () {
                                Navigator.of(navigatorKey.currentContext!).push(
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ProfileRankingPage()));
                              },
                              child: AssetsManager.icons.gifts
                                  .image(height: 35.w, width: 35.w)),
                          SizedBox(width: 6.h),
                          Text(
                            "نقطة",
                            style: TextStyle(
                              color: XColors.primary,
                              fontSize: 17.sp,
                              fontFamily: 'Tajawal',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                          SizedBox(width: 6.h),
                          Text(
                            widget.userProfile.user!.loyaltyPoints.toString(),
                            style: TextStyle(
                              color: XColors.primary,
                              fontSize: 17.sp,
                              fontFamily: 'Tajawal',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 75,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.userProfile.user!.name ?? '',
                            style: TextStyle(
                              color: const Color(0xFF111C32),
                              fontSize: 15.sp,
                              fontFamily: 'Tajawal',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                          Text(
                            widget.userProfile.user!.email ?? '',
                            style: const TextStyle(
                              color: Color(0xFF7E7E7E),
                              fontSize: 12,
                              fontFamily: 'Tajawal',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                          const Text(
                            'الموقع الجغرافي',
                            style: TextStyle(
                              color: Color(0xFF7E7E7E),
                              fontSize: 10,
                              fontFamily: 'Tajawal',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(navigatorKey.currentContext!)
                                  .push(MaterialPageRoute(
                                      builder: (context) => EditProfilePage(
                                            user: widget.userProfile.user!,
                                            favoriteSports:
                                                widget.favoriteSports,
                                          )));
                            },
                            child: Text(
                              'تعديل الملف الشخصي',
                              style: TextStyle(
                                color: XColors.primary,
                                fontSize: 12.sp,
                                fontFamily: 'Tajawal',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 74.w,
                      height: 74.w,
                      decoration: ShapeDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                widget.userProfile.user!.imgURL ?? '')),
                        color: XColors.Background_Color1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11),
                        ),
                      ),
                      child: Offstage(
                        offstage: widget.userProfile.user?.imgURL == null ||
                            widget.userProfile.user!.imgURL.isNotEmpty,
                        child: Text(
                          initials ?? '',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35.sp,
                            fontFamily: 'Tajawal',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  bottom: 2.w,
                  right: 62.w,
                  width: 20.sp,
                  height: 20.sp,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(navigatorKey.currentContext!).push(
                        MaterialPageRoute(
                          builder: (context) => EditProfilePage(
                            user: widget.userProfile.user!,
                            favoriteSports:
                                widget.userProfile.favoriteSports ?? [],
                          ),
                        ),
                      );
                    },
                    child: Container(
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                            color: Color(0xFFECEBEB), shape: BoxShape.circle),
                        child: Icon(
                          Icons.edit,
                          color: XColors.primary,
                          size: 16.sp,
                        )),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ProfileStatsComponent(
                following: widget.userProfile.following,
                followers: widget.userProfile.followers,
                matchesCount: 0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
