import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport/app/features/academy/domain/enitites/params/acedemy_params.dart';
import 'package:x_sport/app/features/academy/presentation/bloc/academy_bloc.dart';
import 'package:x_sport/app/features/auth/domain/enitites/sport_entity.dart';
import 'package:x_sport/app/features/auth/presentation/bloc/auth_bloc.dart';

import '../../../../../../core/constance/app_constance.dart';
import '../../../../../../core/utils/assets_managers/assets.gen.dart';
import '../../../../../widgets/rectangle_container.dart';

class AcademeiesCategoriesComponent extends StatefulWidget {
  const AcademeiesCategoriesComponent({super.key});

  @override
  State<AcademeiesCategoriesComponent> createState() =>
      _AcademeiesCategoriesComponentState();
}

class _AcademeiesCategoriesComponentState
    extends State<AcademeiesCategoriesComponent> {
  late List<SportEntity> sports;
  @override
  void initState() {
    super.initState();
    sports = context.read<AuthBloc>().sports;
    AcademyEvent.getSuggestedAcademies(
        params: SuggestedAcademyParams(
      pageSize: 1,
      pageNumber: 1,
      sportId: 1,
    ));
  }

  final List<String> items = [
    'كرة قدم',
    'بادل',
    'تنس',
    'لعبة1',
    'غولف',
    'كرة سلة'
  ];

  final ValueNotifier<int> selectedIdx = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.h,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemExtent: 90.w,
        itemCount: sports.length,
        itemBuilder: (context, index) {
          final sport = sports[index];
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: ValueListenableBuilder<int>(
              valueListenable: selectedIdx,
              builder: (context, selectedIndex, child) {
                final isSelected = index == selectedIndex;
                return GestureDetector(
                  onTap: () {
                    selectedIdx.value = index;
                    context.read<AcademyBloc>().add(
                        AcademyEvent.getSuggestedAcademies(
                            params: SuggestedAcademyParams(
                                pageSize: 1,
                                pageNumber: 1,
                                sportId: sports[selectedIndex].sportId)));
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
                          sport.name,
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
