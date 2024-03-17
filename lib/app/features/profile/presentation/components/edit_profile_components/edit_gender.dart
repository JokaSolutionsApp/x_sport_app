import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport/core/constance/app_constance.dart';
import 'package:x_sport/core/constance/app_icons_icons.dart';
import 'package:x_sport/app/widgets/buttons/submit_button.dart';

class EditGenderAlertDialog extends StatefulWidget {
  final String gender;
  final void Function(String) getGender;
  const EditGenderAlertDialog({
    super.key,
    required this.getGender,
    required this.gender,
  });

  @override
  State<EditGenderAlertDialog> createState() => _EditGenderAlertDialogState();
}

class _EditGenderAlertDialogState extends State<EditGenderAlertDialog> {
  late final ValueNotifier<List<bool>> selectedIndices;
  final genders = ['ذكر', 'انثى'];
  @override
  void initState() {
    super.initState();
    int selectedIndex = genders.indexOf(widget.gender);
    if (selectedIndex == -1) selectedIndex = 0;
    selectedIndices = ValueNotifier<List<bool>>([
      selectedIndex == 0,
      selectedIndex == 1,
    ]);
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
            'Select Gender', // Update to your actual title
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(2, (index) {
                return ValueListenableBuilder(
                    valueListenable: selectedIndices,
                    builder: (context, List<bool> isSelectedList, child) {
                      final isSelected = isSelectedList[index];
                      final Color selectedText =
                          isSelected ? Colors.white : XColors.primary;
                      final Color selectedButton = isSelected
                          ? XColors.primary
                          : const Color(0xFFECECFB);
                      return GestureDetector(
                        onTap: () {
                          final updatedSelection = [false, false];
                          updatedSelection[index] = true;
                          selectedIndices.value = updatedSelection;
                        },
                        child: Container(
                          width: 80.w,
                          height: 34.h,
                          decoration: BoxDecoration(
                            color: selectedButton,
                            borderRadius: BorderRadius.circular(8.sp),
                            border: Border.all(
                              color: Colors.white,
                              width: 1.0,
                            ),
                          ),
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              genders[index],
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
            ),
            SizedBox(height: 10.w),
            SubmitButton(
              text: 'Confirm',
              fillColor: XColors.primary,
              minWidth: 80.w,
              height: 40.h,
              textSize: 15,
              onPressed: () {
                int selectedIndex = selectedIndices.value.indexOf(true);
                String selectedGender = genders[selectedIndex];
                widget.getGender(selectedGender);
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
      actionsAlignment: MainAxisAlignment.center,
    );
  }
}
