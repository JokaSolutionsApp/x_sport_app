import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport/app/features/auth/domain/enitites/favorite_sport_entity.dart';
import 'package:x_sport/app/features/auth/domain/enitites/sport_entity.dart';
import 'package:x_sport/core/constance/app_constance.dart';
import 'package:x_sport/core/constance/app_icons_icons.dart';
import 'package:x_sport/app/widgets/buttons/submit_button.dart';

class EditSportAlertDialog extends StatefulWidget {
  final List<SportEntity> favoriteSports;
  final List<SportEntity> allSports;
  final String title;
  final String subtitle;
  final void Function(List<SportEntity>) getSportsIds;
  const EditSportAlertDialog({
    super.key,
    required this.favoriteSports,
    required this.allSports,
    required this.title,
    required this.subtitle,
    required this.getSportsIds,
  });

  @override
  State<EditSportAlertDialog> createState() => _EditSportAlertDialogState();
}

class _EditSportAlertDialogState extends State<EditSportAlertDialog> {
  late final ValueNotifier<List<bool>> selectedIndices;
  final List<SportEntity> sportsIds = [];

  @override
  void initState() {
    super.initState();
    selectedIndices = ValueNotifier<List<bool>>([]);
    initializeSelectedIndices();
  }

  void initializeSelectedIndices() {
    final Set<int> favoriteSportIds =
        widget.favoriteSports.map((e) => e.sportId).toSet();

    List<bool> initialSelectedStates = widget.allSports
        .map((sport) => favoriteSportIds.contains(sport.sportId))
        .toList();

    selectedIndices.value = initialSelectedStates; // Update the ValueNotifier
    print("Initial Selected States: $initialSelectedStates");
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
              color: Colors.black,
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
                                List<bool>.from(selectedIndices.value);
                            updatedSelection[index] = !updatedSelection[index];
                            selectedIndices.value = updatedSelection;

                            final SportEntity sport = widget.allSports[
                                index]; // or widget.allSports[index] based on your setup

                            if (updatedSelection[index]) {
                              if (!sportsIds.contains(sport)) {
                                sportsIds.add(sport);
                              }
                            } else {
                              sportsIds.remove(sport);
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
              fillColor: XColors.primary,
              minWidth: 80.w,
              height: 40.h,
              textSize: 15,
              onPressed: () {
                List<SportEntity> selectedSports = [];
                for (int i = 0; i < selectedIndices.value.length; i++) {
                  if (selectedIndices.value[i]) {
                    selectedSports.add(widget.allSports[i]);
                  }
                }
                widget.getSportsIds(selectedSports);
                Navigator.of(context).pop();
              },
            ),
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
