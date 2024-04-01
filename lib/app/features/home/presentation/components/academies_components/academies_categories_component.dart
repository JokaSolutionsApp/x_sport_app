import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/constance/app_constance.dart';
import '../../../../../../core/utils/assets_managers/assets.gen.dart';
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
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...items.map(
            (e) => Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: ValueListenableBuilder<int>(
                valueListenable: selectedIdx,
                builder: (context, selectedIndex, child) {
                  final isSelected = e == selectedIndex;
                  return GestureDetector(
                    onTap: () {
                      selectedIdx.value = items.indexOf(e);
                    },
                    child: RectangleContainer(
                      radius: 14,
                      containerColor:
                          isSelected ? XColors.primary : XColors.secondary,
                      bottomMargin: 0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          AssetsManager.images.main.tennisGame.image(
                            height: 55.w,
                            color: isSelected
                                ? Colors.white
                                : const Color(0xFF595959),
                          ),
                          Text(
                            e,
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
            ),
          )
        ],
      ),
    );
  }
}
