import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constance/app_constance.dart';
import '../../../../../core/utils/assets_managers/assets.gen.dart';
import '../../../../widgets/rectangle_container.dart';

class TournamentResultMatchesComponent extends StatelessWidget {
  TournamentResultMatchesComponent({super.key});
  final List<String> groups = [
    'المجموعة الاولى',
    'المجموعة الثانية',
    'المجموعة الثالثة',
  ];
  final ValueNotifier<int> selectedIdx = ValueNotifier<int>(0);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 12.w),
          height: 86.h,
          child: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 0.04.sw, vertical: 10),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            reverse: true,
            itemExtent: 190.w,
            itemCount: groups.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: ValueListenableBuilder<int>(
                  valueListenable: selectedIdx,
                  builder: (context, selectedIndex, child) {
                    final isSelected = index == selectedIndex;
                    return GestureDetector(
                      onTap: () {
                        selectedIdx.value = index;
                      },
                      child: Container(
                        height: 61.h,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13.sp),
                            color: isSelected ? XColors.primary : Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.06),
                                  blurRadius: 7,
                                  offset: Offset(0, 4.w))
                            ]),
                        child: Text(
                          groups[index],
                          style: TextStyle(
                            color: isSelected ? Colors.white : XColors.primary,
                            fontWeight: FontWeight.w500,
                            fontSize: 15.sp,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ),
        Text(
          'الاسبوع الأول',
          style: TextStyle(
            color: const Color(0xFFA8A8A8),
            fontWeight: FontWeight.w500,
            fontSize: 18.sp,
          ),
        ),
        SizedBox(
            width: 220.w,
            height: 180.w,
            child: RectangleContainer(
                radius: 13,
                bottomMargin: 33,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.w, horizontal: 8.w),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height: 40.w,
                                width: 40.w,
                                child: CircleAvatar(
                                    backgroundImage: AssetsManager
                                        .images.avatars.avatar2
                                        .image(fit: BoxFit.cover)
                                        .image),
                              ),
                              SizedBox(height: 4.w),
                              Text(
                                '0',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15.sp,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: List.generate(
                                3,
                                (index) => Container(
                                      alignment: Alignment.center,
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 4.w),
                                      margin: EdgeInsets.only(bottom: 4.w),
                                      height: 13.w,
                                      width: 80.w,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(7.sp),
                                        color: XColors.primary,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '1',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10.sp,
                                            ),
                                          ),
                                          Text(
                                            '3',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10.sp,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )),
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 40.w,
                                width: 40.w,
                                child: CircleAvatar(
                                    backgroundImage: AssetsManager
                                        .images.avatars.avatar2
                                        .image(fit: BoxFit.cover)
                                        .image),
                              ),
                              SizedBox(height: 4.w),
                              Text(
                                '3',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15.sp,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 4.w),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'اللاعب 2',
                            style: TextStyle(
                              color: const Color(0xFF757575),
                              fontWeight: FontWeight.w400,
                              fontSize: 12.sp,
                            ),
                          ),
                          Text(
                            'اللاعب 1',
                            style: TextStyle(
                              color: const Color(0xFF757575),
                              fontWeight: FontWeight.w400,
                              fontSize: 12.sp,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16.w),
                      Text(
                        'انتهت',
                        style: TextStyle(
                          color: const Color(0xFF757575),
                          fontWeight: FontWeight.w500,
                          fontSize: 15.sp,
                        ),
                      ),
                    ],
                  ),
                ))),
      ],
    );
  }
}
