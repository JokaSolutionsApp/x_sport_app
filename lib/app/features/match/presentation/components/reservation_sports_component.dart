import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../domain/enitites/sport_entity.dart';

import '../../../../../../core/constance/app_constance.dart';

class ReservationSportsComponent extends StatelessWidget {
  final ValueNotifier<int> selectedIdx = ValueNotifier<int>(0);
  final List<SportEntity>? sports;

  ReservationSportsComponent({
    super.key,
    this.sports,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42.h,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 0.04.sw),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemExtent: 90.w,
          itemCount: sports?.length ?? 0,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.w),
              child: ValueListenableBuilder<int>(
                valueListenable: selectedIdx,
                builder: (context, selectedIndex, child) {
                  final isSelected = index == selectedIndex;
                  return GestureDetector(
                    onTap: () {
                      selectedIdx.value = index;
                    },
                    child: Container(
                      height: 32.h,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 4,
                            offset: Offset(0, 4.w),
                          )
                        ],
                        color: isSelected
                            ? XColors.primary
                            : const Color(0xFFECECFB),
                        borderRadius: BorderRadius.circular(
                          16.sp,
                        ),
                      ),
                      child: Text(
                        sports?[index].name ?? '',
                        style: TextStyle(
                          color: isSelected
                              ? Colors.white
                              : const Color(0xFF7373AD),
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
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
    );
  }
}
