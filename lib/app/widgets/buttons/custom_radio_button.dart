import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/assets_managers/assets.gen.dart';

class CustomRadioButton extends StatefulWidget {
  final int value;
  final int seleceted;
  final String lable;
  final AssetGenImage image;
  final void Function(int selectedValue) onTap;

  const CustomRadioButton({
    super.key,
    required this.value,
    required this.lable,
    required this.image,
    required this.onTap,
    required this.seleceted,
  });

  @override
  State<CustomRadioButton> createState() => _CustomRadioButtonState();
}

class _CustomRadioButtonState extends State<CustomRadioButton> {
  late final ValueNotifier<int?> selectedValue;
  @override
  void initState() {
    selectedValue = ValueNotifier<int?>(widget.value);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        height: 59.w,
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        margin: EdgeInsets.only(bottom: 20.h),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: const Color(0xFFDDDDDD), width: 0.5.w),
            borderRadius: BorderRadius.circular(6.sp)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                widget.onTap(widget.value);
              },
              child: Container(
                width: 24.w, // Adjust the width as needed
                height: 24.w, // Adjust the height as needed
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color(0xFFF6F6F6),
                  border: Border.all(
                    color: const Color(0xFFB6B6B6),
                    width: 0.5.w,
                  ),
                ),
                child: Center(
                  child: selectedValue.value == widget.seleceted
                      ? Container(
                          width: 14.w, // Adjust the width as needed
                          height: 14.w, // Adjust the height as needed
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: selectedValue.value == widget.seleceted
                                ? const Color(0xFF50ABFF)
                                : const Color(0xFFF6F6F6),
                            border: Border.all(
                              color: const Color(0xFFB6B6B6),
                              width: 0.5.w,
                            ),
                          ),
                        )
                      : null,
                ),
              ),
            ),
            Row(
              children: [
                Text(
                  widget.lable,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(width: 20.w),
                SizedBox(
                  width: 45.w, // Set a fixed width
                  height: 45.w, // Set a fixed height
                  child: widget.image.image(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
