import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:x_sport/core/constance/app_constance.dart';
import 'package:x_sport/core/constance/app_icons_icons.dart';
import 'package:x_sport/core/constance/local_data.dart';

class MatchTypeComponent extends StatelessWidget {
  MatchTypeComponent({super.key});
  final matchTypes = LocalData.matchTypes;
  @override
  Widget build(BuildContext context) {
    final ValueNotifier<int?> isSelectedIndex = ValueNotifier<int?>(null);
    return ListView.builder(
        shrinkWrap: true,
        itemCount: matchTypes.length,
        itemBuilder: (context, index) {
          return ValueListenableBuilder(
            valueListenable: isSelectedIndex,
            builder: (context, selectedIndex, child) {
              final isSelected = index == selectedIndex;

              return Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: MaterialButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    isSelectedIndex.value = index;
                  },
                  elevation: 0,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                        color: isSelected
                            ? XColors.Submit_Button_Color
                            : const Color(0xFF828282),
                        width: isSelected ? 1.5.w : 1.w),
                    borderRadius: BorderRadius.circular(15.sp),
                  ),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 12.0.w),
                          child: SizedBox(
                            width: 0.70.sw,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  matchTypes[index].title,
                                  style: TextStyle(
                                    height: 2.2.w,
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  matchTypes[index].subtitle,
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                    height: 2.2.w,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xFF959595),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        index == 1
                            ? Container(
                                height: 60.w,
                                width: 60.w,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: matchTypes[index]
                                            .image
                                            .image()
                                            .image)),
                              )
                            : SizedBox(
                                height: 60.w,
                                width: 60.w,
                                child: Icon(
                                  AppIcons.friendly,
                                  size: 42.sp,
                                ))
                      ]),
                ),
              );
            },
          );
        });
  }
}
