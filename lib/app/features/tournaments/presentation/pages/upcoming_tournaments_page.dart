import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport/app/features/chat/presentation/pages/my_chats_page.dart';
import 'package:x_sport/core/utils/assets_managers/assets.gen.dart';

import '../../../../../core/constance/app_constance.dart';
import '../../../../../core/constance/app_icons_icons.dart';
import '../../../../../main.dart';
import '../../../profile/presentation/pages/profile_page.dart';
import 'tournament_page.dart';
import '../../../../widgets/buttons/submit_button.dart';
import '../../../../widgets/rectangle_container.dart';

class UpCommingTournamentsPage extends StatelessWidget {
  const UpCommingTournamentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // toolbarHeight: 100.h,
        backgroundColor: XColors.Background_Color1,
        surfaceTintColor: XColors.Background_Color1,
        automaticallyImplyLeading: false,
        elevation: 0,
        flexibleSpace: Container(
          margin: EdgeInsets.only(top: 20.w),
          alignment: Alignment.center,
          color: XColors.Background_Color1,
          padding: EdgeInsets.symmetric(horizontal: 15.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(navigatorKey.currentContext!).push(
                        MaterialPageRoute(
                            builder: (context) => const ProfilePage()),
                      );
                    },
                    child: Container(
                      height: 34.w,
                      width: 34.w,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.sp),
                        color: Colors.transparent,
                        border: Border.all(
                            color: Colors.white.withOpacity(0.6), width: 1.w),
                      ),
                      child: Icon(
                        Icons.person_outline,
                        size: 24.sp,
                        color: Colors.white.withOpacity(0.6),
                      ),
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Stack(
                    children: [
                      Container(
                        height: 34.w,
                        width: 34.w,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.sp),
                          color: Colors.transparent,
                          border: Border.all(
                              color: Colors.white.withOpacity(0.6), width: 1.w),
                        ),
                        child: Icon(
                          Icons.notifications_outlined,
                          size: 24.sp,
                          color: Colors.white.withOpacity(0.6),
                        ),
                      ),
                      Positioned(
                        right: 0.w,
                        bottom: 0.w,
                        child: Container(
                          width: 10.w,
                          height: 10.w,
                          decoration: const ShapeDecoration(
                            color: Color(0xFFF44336),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyChatsPage()));
                  },
                  child: Stack(
                    children: [
                      Container(
                        height: 34.w,
                        width: 34.w,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.sp),
                          color: Colors.transparent,
                          border: Border.all(
                              color: Colors.white.withOpacity(0.6), width: 1.w),
                        ),
                        child: Icon(
                          Icons.message_outlined,
                          size: 22.sp,
                          color: Colors.white.withOpacity(0.6),
                        ),
                      ),
                      Positioned(
                        right: 0.w,
                        bottom: 0.w,
                        child: Container(
                          width: 10.w,
                          height: 10.w,
                          decoration: const ShapeDecoration(
                            color: Color(0xFFF44336),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.only(left: 27.w, right: 27.w, top: 25.w),
        child: Column(children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'اشترك باحدى البطولات القادمة \nوزد من خبرتك!',
                textAlign: TextAlign.end,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(width: 8.w),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 22.sp,
                  color: Colors.black,
                ),
              )
            ],
          ),
          SizedBox(height: 25.w),
          Container(
            height: 150.w,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(21.sp),
                image: DecorationImage(
                  image: AssetsManager.images.main.winnerBanner.image().image,
                )),
          ),
          SizedBox(height: 36.w),
          SizedBox(
            height: 1.sh,
            child: ListView.builder(
                itemCount: 7,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TournamentPage()));
                    },
                    child: SizedBox(
                      width: 1.sw,
                      child: RectangleContainer(
                          bottomMargin: 10,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8.w, vertical: 6),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          'اسم البطولة',
                                          textAlign: TextAlign.end,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Text(
                                          'الجهة المنظمة: اسم الملعب/الاكاديمية',
                                          textAlign: TextAlign.end,
                                          style: TextStyle(
                                              color: const Color(0xFF727272),
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 12.w),
                                    Container(
                                      height: 50.w,
                                      width: 50.w,
                                      decoration: const BoxDecoration(
                                        color: Colors.black,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 16.w),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      'البدء: السبت 9/11/2023',
                                      style: TextStyle(
                                          color: const Color(0xFF727272),
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    SizedBox(width: 46.w),
                                    Row(
                                      children: [
                                        Text(
                                          'الانتهاء: الخميس 9/11/2023',
                                          style: TextStyle(
                                              color: const Color(0xFF727272),
                                              fontSize: 10.sp,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        SizedBox(width: 4.w),
                                        GestureDetector(
                                          child: Icon(
                                            AppIcons.calender,
                                            size: 36.sp,
                                            color: const Color(0xFF727272),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'الانضمام للبطولة متاح',
                                      style: TextStyle(
                                          color: XColors.Submit_Button_Color,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    SubmitButton(
                                      minWidth: 82,
                                      height: 22,
                                      radius: 0,
                                      textSize: 10,
                                      fillColor: XColors.Submit_Button_Color,
                                      textColor: Colors.white,
                                      text: 'عرض المزيد',
                                      onPressed: () {},
                                    )
                                  ],
                                )
                              ],
                            ),
                          )),
                    ),
                  );
                }),
          )
        ]),
      ),
    );
  }
}
