import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/assets_managers/assets.gen.dart';

import '../../../../../../core/constance/app_constance.dart';
import '../../../../../widgets/rectangle_container.dart';

class AcademeiesCategoriesComponent extends StatelessWidget {
  final List<String> items = [
    'كرة قدم',
    'بادل',
    'تنس',
    'لعبة1',
    'غولف',
    'كرة سلة'
  ];
  final ValueNotifier<int> selectedIdx = ValueNotifier<int>(0);
  AcademeiesCategoriesComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.h,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 0.04.sw),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemExtent: 90.w,
        itemCount: items.length,
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
                  child: RectangleContainer(
                    radius: 14,
                    containerColor: isSelected
                        ? XColors.Background_Color1
                        : const Color(0xFFD1DBF6),
                    bottomMargin: 0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        AssetsManager.images.main.tennisGame.image(
                          height: 55.w,
                        ),
                        Text(
                          items[index],
                          style: TextStyle(
                            color: isSelected
                                ? Colors.white
                                : const Color(0xFF7373AD),
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
