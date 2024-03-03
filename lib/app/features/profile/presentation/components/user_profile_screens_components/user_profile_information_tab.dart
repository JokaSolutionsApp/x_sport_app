import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:x_sport/core/constance/local_data.dart';
import 'package:x_sport/core/utils/assets_managers/assets.gen.dart';
import 'package:x_sport/app/features/profile/presentation/pages/profile_ranking_screen.dart';
import 'package:x_sport/app/widgets/buttons/submit_button.dart';
import 'package:x_sport/app/widgets/rectangle_container.dart';

import '../../../../../../../core/constance/app_constance.dart';

class UserProfileInformationTab extends StatelessWidget {
  final ValueNotifier<int> selectedIndex = ValueNotifier<int>(0);

  final levels = LocalData.levels;
  final List<LocalPreference> localPrefernces = LocalData.prefernces;
  final List<String> favoritSports = LocalData.favoritSports;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              margin: EdgeInsets.only(top: 7),
              padding: EdgeInsets.only(right: 7),
              alignment: Alignment.center,
              width: 0.96.sw,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFD1D1D1), width: 0.5),
                color: Colors.white,
                borderRadius: BorderRadius.circular(32.sp),
              ),
              height: 50,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'الالعاب المفضلة:',
                    style: TextStyle(
                      height: 0,
                      fontSize: 12.sp,
                      color: Color(0xFF979797),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(width: 4.w),
                  Expanded(
                    child: GridView.builder(
                      padding: EdgeInsets.only(top: 0),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 94.w,
                        mainAxisExtent: 34.h,
                        crossAxisSpacing: 14.0.w,
                      ),
                      itemCount: favoritSports.length,
                      itemBuilder: (context, index) {
                        return ValueListenableBuilder(
                            valueListenable: selectedIndex,
                            builder: (context, isSelected, child) {
                              final isSelected = selectedIndex.value == index;
                              final Color selectedText = isSelected
                                  ? Colors.white
                                  : XColors.Submit_Button_Color;
                              final Color selectedButton = isSelected
                                  ? XColors.Submit_Button_Color
                                  : Color(0xFFECECFB);
                              return GestureDetector(
                                onTap: () {
                                  selectedIndex.value = index;
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: selectedButton,
                                    borderRadius: BorderRadius.circular(22.sp),
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 1.0,
                                    ),
                                  ),
                                  child: Text(
                                    favoritSports[index],
                                    style: TextStyle(
                                      color: selectedText,
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              );
                            });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20.h),
          ValueListenableBuilder(
              valueListenable: selectedIndex,
              builder: (context, value, child) {
                return Column(
                  children: [
                    RectangleContainer(
                        bottomMargin: 20,
                        radius: 20,
                        width: 385.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AssetsManager.images.main.football.image(),
                            Container(
                              height: 149.h,
                              padding: EdgeInsets.symmetric(horizontal: 16.w),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    favoritSports[selectedIndex.value],
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  RichText(
                                      text: TextSpan(
                                          text: 'المستوى: ',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18.sp,
                                              fontWeight: FontWeight.w500),
                                          children: [
                                        TextSpan(
                                          text:
                                              levels[selectedIndex.value].level,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18.sp,
                                              fontWeight: FontWeight.w400),
                                        )
                                      ])),
                                  RichText(
                                      text: TextSpan(
                                          text: 'نقاط الخبرة: ',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w400),
                                          children: [
                                        TextSpan(
                                          text: levels[selectedIndex.value]
                                              .points,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w400),
                                        )
                                      ])),
                                  Text(
                                    levels[selectedIndex.value].level,
                                    style: TextStyle(
                                        color: XColors.Submit_Button_Color,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        width: 108.w,
                                        height: 26.w,
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: Alignment.center,
                                              child: Directionality(
                                                textDirection:
                                                    TextDirection.rtl,
                                                child: LinearProgressIndicator(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0.sp),
                                                  valueColor:
                                                      const AlwaysStoppedAnimation<
                                                          Color>(
                                                    XColors.Submit_Button_Color,
                                                  ),
                                                  value: 0.3,
                                                  minHeight: 8.h,
                                                  color: XColors
                                                      .Submit_Button_Color,
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: Container(
                                                  alignment: Alignment.center,
                                                  width: 20.w,
                                                  height: 20.w,
                                                  decoration:
                                                      const BoxDecoration(
                                                          color:
                                                              Color(0xFFECEBEB),
                                                          shape:
                                                              BoxShape.circle),
                                                  child: const Icon(
                                                    Icons
                                                        .keyboard_double_arrow_up_outlined,
                                                    color: XColors
                                                        .Submit_Button_Color,
                                                    size: 20,
                                                  )),
                                            ),
                                            Align(
                                              alignment: Alignment.centerRight,
                                              child: Container(
                                                alignment: Alignment.center,
                                                width: 20.w,
                                                height: 20.w,
                                                decoration: const BoxDecoration(
                                                    color: XColors
                                                        .Submit_Button_Color,
                                                    shape: BoxShape.circle),
                                                child: Text(
                                                  '2',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 13.sp,
                                                    fontFamily: 'Tajawal',
                                                    fontWeight: FontWeight.w400,
                                                    height: 0,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 10.w),
                                      Row(
                                        children: [
                                          Text(
                                            '847',
                                            style: TextStyle(
                                              color:
                                                  XColors.Submit_Button_Color,
                                              fontSize: 13.sp,
                                              fontFamily: 'Tajawal',
                                              fontWeight: FontWeight.w400,
                                              height: 0,
                                            ),
                                          ),
                                          SizedBox(width: 5.w),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          ProfileRankingScreen()));
                                            },
                                            child: Container(
                                              width: 24.w,
                                              height: 24.w,
                                              decoration: ShapeDecoration(
                                                shape: RoundedRectangleBorder(
                                                  side: const BorderSide(
                                                    width: 0.50,
                                                    color: XColors
                                                        .Submit_Button_Color,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                ),
                                              ),
                                              child: Icon(
                                                Icons.emoji_events,
                                                size: 20.sp,
                                                color:
                                                    XColors.Submit_Button_Color,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
                    RectangleContainer(
                      bottomMargin: 20,
                      borderWidth: 1,
                      borderColor: 0xFFD9D9D9,
                      radius: 12,
                      child: Padding(
                        padding:
                            EdgeInsets.only(right: 12.w, left: 12.w, top: 4.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            localPrefernces[0].image.image(width: 30.w),
                            SizedBox(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    // widget.preferences![widget.index].name,
                                    localPrefernces[0].title,
                                    style: TextStyle(
                                      fontSize: 15.sp,
                                      color: Colors.black,
                                    ),
                                  ),
                                  // ValueListenableBuilder<String?>(
                                  //   valueListenable: selectedValue,
                                  //   builder: (context, value, child) {
                                  //     return DropdownButton<String>(
                                  //       padding: EdgeInsets.zero,
                                  //       underline: SizedBox.shrink(),
                                  //       value: value,
                                  //       icon: Icon(Icons.arrow_drop_down),
                                  //       iconSize: 0,
                                  //       elevation: 0,
                                  //       onChanged: (String? newValue) {
                                  //         selectedValue.value = newValue!;
                                  //         final id = widget.preferences[widget.index].options
                                  //             .where(
                                  //                 (element) => element.name.contains(newValue))
                                  //             .first
                                  //             .id;

                                  //         // context.read<UserBloc>().add(
                                  //         //     UpdateUserPreferencesEvent(
                                  //         //         sportId: widget.sportId,
                                  //         //         favoriteHand: 0,
                                  //         //         favoritePos: 0,
                                  //         //         favoriteTime: 0));
                                  //       },
                                  //       items: widget.preferences![widget.index].options
                                  //           .map<DropdownMenuItem<String>>(
                                  //         (Option value) {
                                  //           return DropdownMenuItem<String>(
                                  //             value: value.name,
                                  //             child: Text(
                                  //               value.name,
                                  //               style: TextStyle(
                                  //                 fontSize: 15.sp,
                                  //                 color: Color(0xFF2492F8),
                                  //               ),
                                  //             ),
                                  //           );
                                  //         },
                                  //       ).toList(),
                                  //     );
                                  //   },
                                  // ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 0.9.sw,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Text(
                              ':عضو بالفرق',
                              style: TextStyle(
                                fontSize: 15.sp,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Container(
                            height: 50.h,
                            alignment: Alignment.centerRight,
                            padding: EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xFFD1D1D1), width: 0.5),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(32.sp),
                            ),
                            child: Text(
                              'اسم الفريق',
                              style: TextStyle(
                                fontSize: 15.sp,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'قم بدعوتي للانضمام لفريقك الخاص',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Color(0xff979797),
                                ),
                              ),
                              SizedBox(width: 10.w),
                              SubmitButton(
                                text: 'دعوة',
                                fillColor: XColors.Submit_Button_Color,
                                radius: 32,
                                height: 42,
                                minWidth: 124,
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              }),
        ],
      ),
    );
  }
}
