import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/constance/app_constance.dart';
import '../../../../../../core/constance/app_icons_icons.dart';
import '../../../../../widgets/buttons/submit_button.dart';
import '../../../../auth/domain/enitites/favorite_sport_entity.dart';
import '../../../../auth/domain/enitites/sport_entity.dart';
import '../../../../auth/presentation/bloc/auth_bloc.dart';

class DeleteFavoriteSports extends StatefulWidget {
  final List<FavoriteSportEntity>? favoriteSports;
  final List<SportEntity> allSports;
  final void Function(List<int> sportsIds) deleteSports;

  final String title;
  final String subtitle;
  final Color submitColor;
  final Color textColor;
  DeleteFavoriteSports(
      {super.key,
      this.favoriteSports,
      required this.allSports,
      required this.title,
      required this.subtitle,
      this.submitColor = XColors.primary,
      this.textColor = Colors.black,
      required this.deleteSports});

  @override
  State<DeleteFavoriteSports> createState() => _DeleteFavoriteSportsState();
}

class _DeleteFavoriteSportsState extends State<DeleteFavoriteSports> {
  late final ValueNotifier<List<bool>> selectedIndices;
  final List<int> sportsIds = [];

  @override
  void initState() {
    selectedIndices = ValueNotifier<List<bool>>(
        List<bool>.filled(widget.allSports.length, false));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.sp),
      ),
      title: Stack(
        alignment: Alignment.center,
        children: [
          Text(
            widget.title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 17.sp,
              fontWeight: FontWeight.w500,
              color: widget.textColor,
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Icon(
                AppIcons.cancel,
                size: 20.sp,
              ),
            ),
          )
        ],
      ),
      content: SizedBox(
        height: 300.h,
        width: 200.w,
        child: Column(
          children: [
            GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 80.w,
                  mainAxisExtent: 40.h,
                  mainAxisSpacing: 20.0.w,
                ),
                itemCount: widget.allSports.length,
                itemBuilder: (context, index) {
                  // Render the regular item

                  return ValueListenableBuilder(
                      valueListenable: selectedIndices,
                      builder: (context, isSelectedList, child) {
                        final isSelected = isSelectedList[index];
                        final Color selectedText =
                            isSelected ? Colors.white : XColors.primary;
                        final Color selectedButton = isSelected
                            ? XColors.primary
                            : const Color(0xFFECECFB);
                        return GestureDetector(
                          onTap: () {
                            final updatedSelection =
                                List<bool>.from(isSelectedList);
                            updatedSelection[index] = !updatedSelection[index];
                            selectedIndices.value = updatedSelection;
                            final int sportId = widget.allSports[index].sportId;
                            if (!sportsIds.contains(sportId)) {
                              sportsIds.add(sportId);
                            } else {
                              sportsIds.remove(sportId);
                            }
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: selectedButton,
                              borderRadius: BorderRadius.circular(12.sp),
                              border: Border.all(
                                color: Colors.white,
                                width: 1.0,
                              ),
                            ),
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                widget.allSports[index].name,
                                style: TextStyle(
                                  color: selectedText,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        );
                      });
                }),
            SizedBox(height: 10.w),
            SubmitButton(
                text: 'تأكيد',
                fillColor: widget.submitColor,
                minWidth: 80.w,
                height: 40.h,
                textSize: 15,
                onPressed: () {
                  context.read<AuthBloc>().add(
                      AuthEvent.deleteFavoriteSports(sportsIds: sportsIds));
                  widget.deleteSports(sportsIds);
                  Navigator.of(context).pop();
                }),
            SizedBox(height: 10.w),
            Text(
              widget.subtitle,
              textAlign: TextAlign.end,
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
      actionsAlignment: MainAxisAlignment.center,
    );
  }

  List<int> getSelectedIndices() {
    return selectedIndices.value
        .asMap()
        .entries
        .where((e) => e.value)
        .map((e) => e.key)
        .toList();
  }
}
