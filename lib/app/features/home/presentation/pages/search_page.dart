import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constance/app_constance.dart';
import '../../../../../core/constance/app_icons_icons.dart';
import '../../../../../core/utils/assets_managers/assets.gen.dart';
import '../../../../widgets/buttons/submit_button.dart';
import '../../../../widgets/text_fields/search.dart';
import '../components/search_components/user_search_bloc.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchPage>
    with SingleTickerProviderStateMixin {
  final UserSearchBloc _userSearchBloc = UserSearchBloc();
  final TextEditingController _userSearchController = TextEditingController();
  late TabController _tabController;
  int _selectedTab = 1;

  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 2, initialIndex: 1);
    _tabController.addListener(() {
      setState(() {
        _selectedTab = _tabController.index;
      });
    });

    super.initState();
  }

  @override
  void dispose() {
    _userSearchBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F4),
      appBar: AppBar(
        automaticallyImplyLeading: false,

        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.w),
            child: Text(
              'البحث',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          splashFactory: NoSplash.splashFactory,
          overlayColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
              return states.contains(MaterialState.focused)
                  ? null
                  : Colors.transparent;
            },
          ),
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorPadding: EdgeInsets.symmetric(horizontal: 16.w),
          indicator: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: XColors.primary, width: 4.sp))),
          labelStyle: TextStyle(
              color: Colors.black,
              fontSize: 15.sp,
              fontWeight: FontWeight.w500),
          unselectedLabelStyle: const TextStyle(
            color: Color(0xFF8F8F8F),
          ),
          tabs: [
            Tab(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'ملاعب/اكاديميات',
                    style: TextStyle(
                        color:
                            _selectedTab == 1 ? Colors.black : XColors.primary,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(width: 4.w),
                  Icon(
                    size: 30.sp,
                    AppIcons.flag,
                    color: _selectedTab == 1 ? Colors.black : XColors.primary,
                  ),
                ],
              ),
            ),
            Tab(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'اشخاص',
                    style: TextStyle(
                        color:
                            _selectedTab == 0 ? Colors.black : XColors.primary,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(width: 4.w),
                  Icon(
                    size: 30.sp,
                    Icons.person,
                    color: _selectedTab == 0 ? Colors.black : XColors.primary,
                  ),
                ],
              ),
            ),
          ],
        ),
        backgroundColor:
            Colors.transparent, // Set the background color to transparent
        elevation: 0, // Set the elevation to 0 to remove default shadow
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1), // Shadow color
                blurRadius: 10, // Blur radius
                offset: Offset(0, 4.w), // Offset in the x and y directions
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: 1.sh,
          width: 1.sw,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(height: 35.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 6.0.w),
                child: SreachFieldWidget(
                  controller: _userSearchController,
                  userSearchBloc: _userSearchBloc,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 12.w, top: 23.h, bottom: 12.h),
                child: Text(
                  'عرض مؤخرا',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 15.sp),
                ),
              ),
              Expanded(
                  child: ListView.builder(
                padding: EdgeInsets.only(right: 10.w, left: 21),
                itemCount: 8,
                // itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  // UserSearch user = snapshot.data![index];
                  return Padding(
                    padding: EdgeInsets.only(bottom: 40.0.w),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: GestureDetector(
                        onTap: () {
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  height: 50.w,
                                  width: 50.w,
                                  child: CircleAvatar(
                                      backgroundImage: AssetsManager
                                          .images.avatars.avatar2
                                          .image(fit: BoxFit.cover)
                                          .image),
                                ),
                                SizedBox(width: 14.w),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'اسم اللاعب',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15.sp,
                                          color: Colors.black),
                                    ),
                                    Text(
                                      'معلومات شخصية',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 10.sp,
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      right: 10.w, bottom: 10.w),
                                  height: 20.w,
                                  width: 20.w,
                                  child: AssetsManager.images.main.verified
                                      .image(fit: BoxFit.cover),
                                ),
                              ],
                            ),
                            GestureDetector(
                              child: Icon(
                                Icons.close,
                                size: 32.sp,
                                color: const Color(0xFF2E2E2E),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              )),
              // Expanded(
              //   child: StreamBuilder<List<UserSearch>>(
              //     stream: _userSearchBloc.userStream,
              //     builder: (context, snapshot) {
              //       // if (snapshot.hasError) {
              //       //   return Text('Error: ${snapshot.error}');
              //       // }

              //       if (!snapshot.hasData ||
              //           snapshot.data!.isEmpty ||
              //           _userSearchController.text.isEmpty) {
              //         return Text(' ');
              //       }

              //       return ListView.builder(
              //         padding: EdgeInsets.only(right: 10.w, left: 21),
              //         itemCount: 8,
              //         // itemCount: snapshot.data!.length,
              //         itemBuilder: (context, index) {
              //           // UserSearch user = snapshot.data![index];
              //           return Padding(
              //             padding: EdgeInsets.only(bottom: 40.0.w),
              //             child: Directionality(
              //               textDirection: TextDirection.rtl,
              //               child: GestureDetector(
              //                 onTap: () {
              //                   // FocusScope.of(context).unfocus();
              //                   // Future.delayed(Duration(milliseconds: 150), () {
              //                   //   Navigator.push(
              //                   //     context,
              //                   //     MaterialPageRoute(
              //                   //       builder: (context) => PeopleProfilePage(),
              //                   //     ),
              //                   //   );
              //                   // });
              //                 },
              //                 child: Row(
              //                   mainAxisAlignment:
              //                       MainAxisAlignment.spaceBetween,
              //                   children: [
              //                     Row(
              //                       children: [
              //                         Container(
              //                           height: 50.w,
              //                           width: 50.w,
              //                           decoration: BoxDecoration(
              //                               shape: BoxShape.circle,
              //                               image: DecorationImage(
              //                                 image: AssetImage(
              //                                     'assets/images/avatar2.png'),
              //                                 fit: BoxFit.cover,
              //                               )),
              //                         ),
              //                         SizedBox(width: 14.w),
              //                         Column(
              //                           crossAxisAlignment:
              //                               CrossAxisAlignment.start,
              //                           children: [
              //                             Text(
              //                               'اسم اللاعب',
              //                               style: TextStyle(
              //                                   fontWeight: FontWeight.w500,
              //                                   fontSize: 15.sp,
              //                                   color: Colors.black),
              //                             ),
              //                             Text(
              //                               'معلومات شخصية',
              //                               style: TextStyle(
              //                                 fontWeight: FontWeight.w500,
              //                                 fontSize: 10.sp,
              //                               ),
              //                             ),
              //                           ],
              //                         ),
              //                         Container(
              //                           margin: EdgeInsets.only(
              //                               right: 10.w, bottom: 10.w),
              //                           height: 20.w,
              //                           width: 20.w,
              //                           decoration: BoxDecoration(
              //                               image: DecorationImage(
              //                             image: AssetImage(
              //                                 'assets/images/verified.png'),
              //                             fit: BoxFit.cover,
              //                           )),
              //                         ),
              //                       ],
              //                     ),
              //                     GestureDetector(
              //                       child: Icon(
              //                         Icons.cancel_outlined,
              //                         size: 30.sp,
              //                         color: Color(0xFF2E2E2E),
              //                       ),
              //                     )
              //                   ],
              //                 ),
              //               ),
              //             ),
              //           );
              //         },
              //       );
              //     },
              //   ),
              // ),
              SizedBox(
                height: 0.48.sh,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(right: 12.w, top: 23.h, bottom: 20.h),
                      child: Text(
                        'اشخاص قد تعرفهم',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 15.sp),
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        padding: EdgeInsets.only(right: 10.w, left: 21),
                        itemCount: 2,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(bottom: 40.0.w),
                            child: Directionality(
                              textDirection: TextDirection.rtl,
                              child: GestureDetector(
                                onTap: () {
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
                                        SizedBox(
                                          height: 50.w,
                                          width: 50.w,
                                          child: CircleAvatar(
                                              backgroundImage: AssetsManager
                                                  .images.avatars.avatar2
                                                  .image(fit: BoxFit.cover)
                                                  .image),
                                        ),
                                        SizedBox(width: 14.w),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'اسم اللاعب',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 15.sp,
                                                  color: Colors.black),
                                            ),
                                            Text(
                                              'معلومات شخصية',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 10.sp,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(
                                              right: 10.w, bottom: 10.w),
                                          height: 20.w,
                                          width: 20.w,
                                          child: AssetsManager
                                              .images.main.verified
                                              .image(fit: BoxFit.cover),
                                        ),
                                      ],
                                    ),
                                    SubmitButton(
                                      minWidth: 88.w,
                                      height: 32.w,
                                      radius: 6,
                                      fillColor: XColors.primary,
                                      textSize: 15,
                                      text: 'تابع',
                                      onPressed: () {},
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
