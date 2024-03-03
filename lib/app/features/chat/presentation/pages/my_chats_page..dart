import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:x_sport/core/utils/assets_managers/assets.gen.dart';
import 'package:x_sport/app/features/chat/presentation/pages/chat_page..dart';
import 'package:x_sport/app/features/home/presentation/components/search_components/user_search_bloc.dart';
import 'package:x_sport/app/widgets/rectangle_container.dart';
import 'package:x_sport/app/widgets/text_fields/search.dart';

class MyChatsPage extends StatefulWidget {
  const MyChatsPage({super.key});

  @override
  State<MyChatsPage> createState() => _MyChatsScreenState();
}

class _MyChatsScreenState extends State<MyChatsPage>
    with TickerProviderStateMixin {
  late TabController tabController;
  final UserSearchBloc _userSearchBloc = UserSearchBloc();
  final TextEditingController _userSearchController = TextEditingController();
  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this, initialIndex: 2);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 60.h),
          SizedBox(
            width: 382.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    height: 40.w,
                    width: 40.w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.sp),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFF000000).withOpacity(0.1),
                          blurRadius: 6,
                          offset: Offset(0, 4.w),
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.arrow_back_ios_new_outlined,
                      size: 26.sp,
                      color: const Color(0xFF595959),
                    ),
                  ),
                ),
                SizedBox(
                  width: 315.w,
                  child: SreachFieldWidget(
                    controller: _userSearchController,
                    userSearchBloc: _userSearchBloc,
                    fillColor: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 35.h),
          SizedBox(
            width: 315.w,
            child: RectangleContainer(
              bottomMargin: 35,
              child: TabBar(
                splashBorderRadius: BorderRadius.circular(14.sp),
                indicatorColor: Colors.transparent,
                controller: tabController,
                labelColor: const Color(0xFF2492F8),
                tabs: [
                  Tab(
                      icon: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Icon(
                        Icons.edit_note_outlined,
                        size: 30.sp,
                      ),
                      Positioned(
                        left: -4.w,
                        bottom: -1.w,
                        child: Container(
                          width: 11.w,
                          height: 11.w,
                          decoration: const ShapeDecoration(
                            color: Color(0xFFF44336),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                    ],
                  )),
                  Tab(
                      icon: Icon(
                    Icons.people,
                    size: 30.sp,
                  )),
                  Tab(
                      icon: Icon(
                    Icons.person,
                    size: 30.sp,
                  )),
                ],
                labelStyle: const TextStyle(),
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: [
                const Center(
                    child: Text('Content for tab 2', style: TextStyle())),
                const Center(
                    child: Text('Content for tab 3', style: TextStyle())),
                SizedBox(
                  // height: 0.48.sh,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            right: 12.w, top: 23.h, bottom: 20.h),
                        child: Text(
                          'الدردشات',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: const Color(0xFF8C8C8C),
                              fontWeight: FontWeight.w400,
                              fontSize: 20.sp),
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                          padding: EdgeInsets.only(right: 10.w, left: 21),
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(bottom: 40.0.w),
                              child: Directionality(
                                textDirection: TextDirection.rtl,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const ChatPage()));
                                    // FocusScope.of(context).unfocus();
                                    // Future.delayed(Duration(milliseconds: 150), () {
                                    //   Navigator.push(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //       builder: (context) => PeopleProfilePage(),
                                    //     ),
                                    //   );
                                    // });
                                  },
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Stack(
                                            children: [
                                              Container(
                                                height: 66.w,
                                                width: 66.w,
                                                decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                        image: AssetsManager
                                                            .images
                                                            .avatars
                                                            .avatar0
                                                            .image(
                                                                fit: BoxFit
                                                                    .cover)
                                                            .image)),
                                              ),
                                              Positioned(
                                                left: 1.w,
                                                bottom: 2.w,
                                                child: Container(
                                                  width: 15.w,
                                                  height: 15.w,
                                                  decoration:
                                                      const ShapeDecoration(
                                                    color: Color(0xFF3DEC00),
                                                    shape: OvalBorder(),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(width: 14.w),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'اسم المستخدم',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 15.sp,
                                                    color: Colors.black),
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    'نازل عالتمرين اليوم؟َ!',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 12.sp,
                                                    ),
                                                  ),
                                                  SizedBox(width: 14.w),
                                                  Text(
                                                    '3د',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 12.sp,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Container(
                                        height: 26.w,
                                        width: 26.w,
                                        alignment: Alignment.center,
                                        decoration: const BoxDecoration(
                                          color: Color(0xFF2492F8),
                                          shape: BoxShape.circle,
                                        ),
                                        child: Text(
                                          '3',
                                          style: TextStyle(
                                              height: 2.6.w,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12.sp,
                                              color: Colors.white),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
