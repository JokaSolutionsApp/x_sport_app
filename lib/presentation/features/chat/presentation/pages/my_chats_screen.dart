import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_sport/core/constance/app_constance.dart';
import 'package:x_sport/presentation/features/home/presentation/components/search_components/user_search_bloc.dart';
import 'package:x_sport/presentation/features/chat/presentation/pages/chat_screen.dart';
import 'package:x_sport/presentation/widgets/buttons/submit_button.dart';
import 'package:x_sport/presentation/widgets/rectangle_container.dart';
import 'package:x_sport/presentation/widgets/text_fields/search.dart';

class MyChatsScreen extends StatefulWidget {
  const MyChatsScreen({super.key});

  @override
  State<MyChatsScreen> createState() => _MyChatsScreenState();
}

class _MyChatsScreenState extends State<MyChatsScreen>
    with TickerProviderStateMixin {
  late TabController tabController;
  final UserSearchBloc _userSearchBloc = UserSearchBloc();
  TextEditingController _userSearchController = TextEditingController();
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
                      color: Color(0xFF595959),
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
                labelColor: Color(0xFF2492F8),
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
                labelStyle: GoogleFonts.tajawal(),
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: [
                Center(
                    child: Text('Content for tab 2',
                        style: GoogleFonts.tajawal())),
                Center(
                    child: Text('Content for tab 3',
                        style: GoogleFonts.tajawal())),
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
                          style: GoogleFonts.tajawal(
                              color: Color(0xFF8C8C8C),
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
                                                const ChatScreen()));
                                    // FocusScope.of(context).unfocus();
                                    // Future.delayed(Duration(milliseconds: 150), () {
                                    //   Navigator.push(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //       builder: (context) => PeopleProfileScreen(),
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
                                                      image: AssetImage(
                                                          'assets/images/avatar0.png'),
                                                      fit: BoxFit.cover,
                                                    )),
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
                                                style: GoogleFonts.tajawal(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 15.sp,
                                                    color: Colors.black),
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    'نازل عالتمرين اليوم؟َ!',
                                                    style: GoogleFonts.tajawal(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 12.sp,
                                                    ),
                                                  ),
                                                  SizedBox(width: 14.w),
                                                  Text(
                                                    '3د',
                                                    style: GoogleFonts.tajawal(
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
                                        decoration: BoxDecoration(
                                          color: Color(0xFF2492F8),
                                          shape: BoxShape.circle,
                                        ),
                                        child: Text(
                                          '3',
                                          style: GoogleFonts.tajawal(
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
