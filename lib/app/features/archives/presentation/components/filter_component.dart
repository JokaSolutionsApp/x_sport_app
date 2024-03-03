import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:x_sport/core/constance/app_constance.dart';
import 'package:x_sport/core/constance/app_icons_icons.dart';
import 'package:x_sport/app/widgets/buttons/submit_button.dart';
import 'package:x_sport/app/widgets/rectangle_container.dart';

class FilterComponent extends StatelessWidget {
  final List data;
  final String title;
  FilterComponent({super.key, required this.data, required this.title});

  final ValueNotifier selectedIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    // Calculate the height based on the number of items and grid properties
    // Adjust this calculation based on your design
    double gridHeight = ((data.length / 3).ceil() * 40.h) +
        ((data.length / 3).ceil() - 1) * 20.w;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontSize: 15.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 8.w),
        SizedBox(
          width: 1.sw,
          height: gridHeight, // Set the height based on the number of items
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(), // Disable scrolling
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 110.w,
                  mainAxisExtent: 40.h,
                  crossAxisSpacing: 12.0.w,
                  mainAxisSpacing: 20.0.w,
                ),
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return ValueListenableBuilder(
                      valueListenable: selectedIndex,
                      builder: (context, isSelected, child) {
                        final isSelected = selectedIndex.value == index;
                        final Color selectedButton = isSelected
                            ? XColors.Submit_Button_Color
                            : Colors.white;
                        return GestureDetector(
                          onTap: () {
                            selectedIndex.value = index;
                          },
                          child: RectangleContainer(
                            containerColor: Color(0xFFF9F9F9),
                            radius: 12,
                            child: Directionality(
                              textDirection: TextDirection.ltr,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    height: 16.w,
                                    width: 16.w,
                                    padding: EdgeInsets.all(1),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Color(0xFFBBBBBB),
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Container(
                                      height: 10.w,
                                      width: 10.w,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: selectedButton),
                                    ),
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 12.w),
                                    alignment: Alignment.center,
                                    child: Text(
                                      data[index],
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      });
                }),
          ),
        ),
        SizedBox(height: 20.w),
      ],
    );
  }
}
