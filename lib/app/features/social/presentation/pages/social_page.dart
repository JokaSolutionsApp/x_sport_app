import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constance/app_constance.dart';
import '../../../../../core/constance/app_icons_icons.dart';
import '../../../../../core/utils/assets_managers/assets.gen.dart';
import '../../../../../main.dart';
import '../../../chat/presentation/pages/my_chats_page.dart';
import '../../../profile/presentation/components/profile_screen_components/profile_main_components/profile_appbar_component.dart';
import 'story_page.dart';

class SocialPage extends StatelessWidget {
  const SocialPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xFFF6F7F9),
      appBar: const ProfileAppBarComponent(
        isProfile: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(top: 20.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 1.sw,
                  height: 140.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return index == 0
                          ? Padding(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: Column(
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                          padding: EdgeInsets.all(3.w),
                                          alignment: Alignment.center,
                                          height: 94.w,
                                          width: 94.w,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            gradient: LinearGradient(
                                              colors: [
                                                Color(0xFF305FD9),
                                                Color(0xFFAFCDFF)
                                              ], // Replace with your desired colors
                                            ),
                                          ),
                                          child: Container(
                                            height: 94.w,
                                            width: 94.w,
                                            alignment: Alignment.center,
                                            decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color:
                                                    XColors.Background_Color1),
                                            child: Text(
                                              'BA',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 25.sp),
                                            ),
                                          )),
                                      Positioned(
                                        right: 0.w,
                                        bottom: 0.w,
                                        child: Container(
                                          width: 28.w,
                                          height: 28.w,
                                          decoration: const ShapeDecoration(
                                            color: Color(0xFF2492F8),
                                            shape: OvalBorder(),
                                          ),
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.white,
                                            size: 20.sp,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 4.w),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Text(
                                      'انت',
                                      style: TextStyle(
                                          color: const Color(0xFF4A4A4A),
                                          fontSize: 13.sp),
                                    ),
                                  )
                                ],
                              ),
                            )
                          : GestureDetector(
                              onTap: () {
                                Navigator.of(navigatorKey.currentContext!).push(
                                  MaterialPageRoute(
                                      builder: (context) => const StoryPage()),
                                );
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(3.w),
                                      height: 94.w,
                                      width: 94.w,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        gradient: LinearGradient(
                                          colors: [
                                            Color(0xFF305FD9),
                                            Color(0xFFAFCDFF)
                                          ], // Replace with your desired colors
                                        ),
                                      ),
                                      child: CircleAvatar(
                                          backgroundImage: AssetsManager
                                              .images.avatars.avatar2
                                              .image()
                                              .image),
                                    ),
                                    SizedBox(height: 4.w),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Text(
                                        'اسم المستخدم',
                                        style: TextStyle(
                                            color: const Color(0xFF4A4A4A),
                                            fontSize: 13.sp),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                    },
                  ),
                ),
                SizedBox(
                  height: 1.sh,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 234.0.h),
                    child: ListView.builder(
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 4.0.w),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.more_vert,
                                    size: 32.sp,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'اسم المستخدم',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(width: 10.w),
                                      Container(
                                        padding: EdgeInsets.all(2.w),
                                        height: 64.w,
                                        width: 64.w,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          gradient: LinearGradient(
                                            colors: [
                                              Color(0xFF305FD9),
                                              Color(0xFFAFCDFF)
                                            ], // Replace with your desired colors
                                          ),
                                        ),
                                        child: CircleAvatar(
                                            backgroundImage: AssetsManager
                                                .images.avatars.avatar1
                                                .image()
                                                .image),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10.w),
                            AssetsManager.images.social.socialImage.image(),
                            SizedBox(height: 10.w),
                            Padding(
                              padding: EdgeInsets.only(right: 8.w),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(
                                        height: 50.h,
                                        width: 2 * 36.w,
                                        child: Stack(
                                          children: List.generate(
                                            2,
                                            (index) => Positioned(
                                              left: index *
                                                  20.0, // Adjust the spacing between circles
                                              child: Container(
                                                width: 40.w,
                                                height: 40.w,
                                                decoration: const BoxDecoration(
                                                  shape: BoxShape.circle,
                                                ),
                                                child: CircleAvatar(
                                                  backgroundImage: AssetsManager
                                                      .images.avatars.avatar0
                                                      .image()
                                                      .image,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        '200 like',
                                        style: TextStyle(
                                          color: const Color(0xFF414141),
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 120.w,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        IconButton(
                                          icon: Icon(
                                            AppIcons.share,
                                            size: 30.sp,
                                          ),
                                          onPressed: () {},
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.of(navigatorKey
                                                    .currentContext!)
                                                .push(
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const MyChatsPage(),
                                              ),
                                            );
                                          },
                                          child: Icon(
                                            Icons.message_outlined,
                                            size: 30.sp,
                                          ),
                                        ),
                                        Icon(
                                          Icons.favorite_border_outlined,
                                          color: Colors.black,
                                          size: 30.sp,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 12.w),
                            RichText(
                              textAlign: TextAlign.end,
                              text: TextSpan(
                                text: 'اسم المستخدم ',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500),
                                children: [
                                  TextSpan(
                                    text:
                                        'وصف البوست المكتوب من قبل المستخدم وصف البوست المكتوب من قبل المستخدم',
                                    style: TextStyle(
                                      color: const Color(0xFF717171),
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10.w),
                            Align(
                              alignment: Alignment.topRight,
                              child: GestureDetector(
                                onTap: () {
                                  showModalBottomSheet(
                                    backgroundColor: Colors.transparent,
                                    context: context,
                                    builder: (context) {
                                      return DraggableScrollableSheet(
                                        snap: true,
                                        initialChildSize: 1,
                                        maxChildSize: 1,
                                        minChildSize: 0.4,
                                        builder: (context, scrollController) {
                                          return ClipRRect(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(25.r),
                                              topRight: Radius.circular(25.r),
                                            ),
                                            child: Container(
                                              color: Colors.white,
                                              child: Stack(
                                                children: [
                                                  ListView.builder(
                                                    padding: EdgeInsets.only(
                                                      top: 71.h,
                                                    ),
                                                    itemCount: 100,
                                                    controller:
                                                        scrollController,
                                                    itemBuilder:
                                                        (context, index) {
                                                      return const Directionality(
                                                        textDirection:
                                                            TextDirection.rtl,
                                                        child: ListTile(
                                                          leading: Icon(
                                                            Icons
                                                                .account_circle,
                                                          ),
                                                          title: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                'اسم المستخدم',
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                ),
                                                              ),
                                                              Text(
                                                                'نص التعليق',
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                          subtitle: Text(
                                                            'اسم المستخدم',
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                  Container(
                                                    color: Colors.white,
                                                    width: double.infinity,
                                                    height: 71.h,
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        SizedBox(
                                                          height: 14.h,
                                                        ),
                                                        Container(
                                                          width: 125.w,
                                                          height: 4.h,
                                                          color: Colors.black,
                                                        ),
                                                        SizedBox(
                                                          height: 18.h,
                                                        ),
                                                        const Text('التعليقات'),
                                                        SizedBox(
                                                          height: 3.h,
                                                        ),
                                                        Divider(
                                                          height: 1.h,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Positioned(
                                                    right: 0,
                                                    bottom: 0,
                                                    left: 0,
                                                    child: Container(
                                                      height: 55.h,
                                                      width: double.infinity,
                                                      color: Colors.white,
                                                      child: Row(
                                                        children: [
                                                          const Expanded(
                                                            child:
                                                                Directionality(
                                                              textDirection:
                                                                  TextDirection
                                                                      .rtl,
                                                              child: TextField(
                                                                decoration:
                                                                    InputDecoration(
                                                                  hintText:
                                                                      'اكتب تعليقا...',
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          IconButton(
                                                            icon: const Icon(
                                                              Icons.send,
                                                            ),
                                                            onPressed: () {},
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  );
                                },
                                child: Text(
                                  'عرض التعليقات',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
