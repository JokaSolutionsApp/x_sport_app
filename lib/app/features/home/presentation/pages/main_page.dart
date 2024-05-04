import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport/app/features/auth/presentation/bloc/auth_bloc.dart';

import '../../../../../core/constance/app_constance.dart';
import '../../../../../core/constance/app_icons_icons.dart';
import '../../../../../core/services/locator/service_locator.dart';
import '../../../../../core/services/secure_storage_service.dart.dart';
import '../../../../../main.dart';
import '../../../../widgets/buttons/submit_button.dart';
import '../../../match/presentation/pages/match_reservation_page.dart';
import '../../../social/presentation/pages/social_page.dart';
import '../components/main_components/match_type_component.dart';
import '../components/main_components/options_component.dart';
import 'academies_page.dart';
import 'home_page.dart';
import 'play_page.dart';
import 'search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  final ValueNotifier _selectedIndex = ValueNotifier(0);
  ValueNotifier optionsHandler = ValueNotifier(0);
  late TabController _tabController;

  List<Widget> screens = [
    const SearchPage(),
    const SocialPage(),
    const HomePage(),
    const AcademiesPage(),
    PlayPage(),
  ];
  bool isContainerVisible = false;

  @override
  void initState() {
    confirmCompleted();
    _tabController = TabController(length: 5, vsync: this);

    super.initState();
    context.read<AuthBloc>().add(const AuthEvent.getUserProfile());
  }

  confirmCompleted() async {
    await sl<SecureStorageService>().delete('welcome');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        floatingActionButton: ValueListenableBuilder(
          valueListenable: optionsHandler,
          builder: (context, value, child) => value == 0
              ? OptionsButtonComponent(
                  handleAddButton: (int index) {
                    optionsHandler.value = index;
                    if (index == 3) {
                      Navigator.of(navigatorKey.currentContext!).push(
                        MaterialPageRoute(
                            builder: (context) => const MatchReservationPage()),
                      );
                    }
                    optionsHandler.value = 0;
                  },
                )
              : const SizedBox.shrink(),
        ),
        backgroundColor: Colors.white,
        bottomNavigationBar: ValueListenableBuilder(
            valueListenable: optionsHandler,
            builder: (context, value, child) {
              return optionsHandler.value == 1
                  ? Container(
                      height: 0.52.sh,
                      padding:
                          const EdgeInsets.only(left: 10, top: 18, right: 10),
                      decoration: BoxDecoration(
                        color: Colors.white, // Adjust color as needed
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(12.sp),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.15),
                            blurRadius: 20.sp,
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                ':حدد نوع المباراة التي تريد',
                                style: TextStyle(
                                  height: 2.2.w,
                                  fontSize: 22.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(width: 10.w),
                              GestureDetector(
                                  onTap: () {
                                    optionsHandler.value = 0;
                                  },
                                  child: Icon(
                                    Icons.close,
                                    size: 40.sp,
                                    color: Colors.black,
                                  ))
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                right: 10.w, top: 10.w, bottom: 10.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 0.8.sw,
                                  child: RichText(
                                      textAlign: TextAlign.end,
                                      text: TextSpan(
                                          text:
                                              'سيتم نشر اعلان انك تبحث عن خصم لمواجهته\n',
                                          style: TextStyle(
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.w500,
                                            color: const Color(0xFF959595),
                                          ),
                                          children: [
                                            TextSpan(
                                              text: 'x sport في مجتمع',
                                              style: TextStyle(
                                                fontSize: 18.sp,
                                                fontWeight: FontWeight.w500,
                                                color: const Color(0xFF959595),
                                              ),
                                            ),
                                          ])),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Icon(
                                  AppIcons.exc_mark,
                                  size: 20.sp,
                                  color: Colors.black,
                                )
                              ],
                            ),
                          ),
                          MatchTypeComponent(),
                          SubmitButton(
                              radius: 6,
                              height: 28.w,
                              minWidth: 170.w,
                              fillColor: XColors.primary,
                              text: 'التالي',
                              onPressed: () {
                                Navigator.of(navigatorKey.currentContext!).push(
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const MatchReservationPage()),
                                );
                              }),
                        ],
                      ),
                    )
                  : ValueListenableBuilder(
                      valueListenable: _selectedIndex,
                      builder: (context, selectedIndex, child) {
                        return Container(
                          height: Platform.isIOS ? 94.h : 72.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.15),
                                offset: Offset(0, -3.w),
                                spreadRadius: 4.sp,
                                blurRadius: 20.sp,
                              ),
                            ],
                          ),
                          child: TabBar(
                            splashFactory: NoSplash.splashFactory,
                            overlayColor:
                                MaterialStateProperty.resolveWith<Color?>(
                              (Set<MaterialState> states) {
                                return states.contains(MaterialState.focused)
                                    ? null
                                    : Colors.transparent;
                              },
                            ),
                            controller: _tabController,
                            unselectedLabelColor: const Color(0xFF9F9F9F),
                            labelColor: XColors.primary,
                            dividerHeight: 0,
                            labelStyle: TextStyle(
                              fontSize: 13.sp,
                              color: const Color(0xFF9F9F9F),
                            ),
                            // isScrollable: true,
                            // labelPadding:
                            //     ChartHelper.getTabBarRightPadding(sizer),
                            indicatorSize: TabBarIndicatorSize.label,
                            // indicatorPadding:
                            //     ChartHelper.getIndecatorHeight(sizer),
                            indicator: const BoxDecoration(),

                            tabs: [
                              Tab(
                                  iconMargin: EdgeInsets.only(bottom: 3.w),
                                  icon: Icon(
                                    Icons.search,
                                    size: 40.sp,
                                  ),
                                  text: 'ابحث'),
                              Tab(
                                  iconMargin: EdgeInsets.only(bottom: 3.w),
                                  icon: Icon(
                                    Icons.language,
                                    size: 40.sp,
                                  ),
                                  text: 'المجتمع'),
                              Tab(
                                  iconMargin: EdgeInsets.only(bottom: 3.w),
                                  icon: Icon(
                                    Icons.home_filled,
                                    size: 42.sp,
                                  ),
                                  text: ''), // Placeholder for custom tab
                              Tab(
                                  iconMargin: EdgeInsets.only(bottom: 3.w),
                                  icon: Icon(
                                    AppIcons.academy,
                                    size: 40.sp,
                                  ),
                                  text: 'الاكاديمية'),
                              Tab(
                                  iconMargin: EdgeInsets.only(bottom: 3.w),
                                  icon: Icon(
                                    Icons.sports_basketball,
                                    size: 40.sp,
                                  ),
                                  text: 'العب'),
                            ],

                            // activeColor: XColors.primary,
                            // backgroundColor: Colors.white,
                            // initialActiveIndex: 0,
                            // height: 0.07.sh,
                            // top: -14,
                            // curveSize: 60,

                            // style: TabStyle.fixedCircle,
                            // color: XColors.otp_field_border_color,
                            onTap: (int i) {
                              _selectedIndex.value = i;
                              // Toggle the visibility of the container when a tab is tapped
                            },
                          ),
                        );
                      },
                    );
            }),
        body: Stack(
          children: [
            ValueListenableBuilder(
                valueListenable: _selectedIndex,
                builder: (context, selectedIndex, child) {
                  return screens.elementAt(_selectedIndex.value);
                }),
            ValueListenableBuilder(
              valueListenable: optionsHandler,
              builder: (context, value, child) {
                return optionsHandler.value != 0
                    ? GestureDetector(
                        onTap: () {
                          optionsHandler.value = 0;
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.black12
                                .withOpacity(0.6), // Adjust color as needed
                          ),
                        ),
                      )
                    : const SizedBox.shrink();
              },
            ),
          ],
        ));
  }
}
