import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constance/app_constance.dart';

class TextFormFieldWidget extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final Function onChanged;
  final Stream textStream;
  const TextFormFieldWidget({
    required this.controller,
    required this.hintText,
    required this.keyboardType,
    required this.textStream,
    required this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        StreamBuilder(
            stream: textStream,
            builder: (context, snapshot) {
              TextDirection textDirection = TextDirection.rtl;
              if (controller.text.isNotEmpty) {
                bool startsWithDigitOrPlus =
                    RegExp(r'^[\d+]').hasMatch(controller.text);
                bool endsWithAtSign = controller.text.endsWith('@');

                if (startsWithDigitOrPlus || endsWithAtSign) {
                  textDirection = TextDirection.ltr;
                } else {
                  textDirection = TextDirection.rtl;
                }
              }
              return SizedBox(
                width: 0.83.sw,
                height: 50.h,
                child: TextFormField(
                  cursorHeight: 21.w,
                  textDirection: textDirection,
                  keyboardType: keyboardType,
                  style: TextStyle(
                      height: 1.w,
                      color: XColors.Background_Color1,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w400),
                  controller: controller,
                  textAlign: TextAlign.right,
                  textInputAction: TextInputAction.next,
                  onChanged: (value) => onChanged(value),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: XColors.white,
                    hintText: hintText,
                    hintStyle: const TextStyle(
                      color: XColors.grey,
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 17.w,
                      vertical: 17.h,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6.r),
                      borderSide: const BorderSide(
                        color: XColors.borderColor,
                        width: 0.5,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6.r),
                      borderSide: const BorderSide(
                        color: XColors.borderColor,
                        width: 0.5,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6.r),
                      borderSide: const BorderSide(
                        color: XColors.borderColor,
                        width: 0.5,
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(13.0.sp)),
                      borderSide:
                          BorderSide(color: XColors.Field_Color1, width: 0.5.w),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(13.0.sp)),
                      borderSide:
                          BorderSide(color: XColors.Field_Color1, width: 0.5.w),
                    ),
                  ),
                ),
              );
            }),
        StreamBuilder(
            stream: textStream,
            builder: (context, snapshot) {
              final hasError = snapshot.hasError;
              return hasError
                  ? Text(
                      textAlign: TextAlign.end,
                      snapshot.error.toString(),
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: Color.fromARGB(201, 244, 67, 54)),
                    )
                  : const SizedBox.shrink();
            })
      ],
    );
  }
}
// InputDecoration(
        
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(6.r),
//             borderSide: const BorderSide(
//               color: XColors.borderColor,
//               width: 0.5,
//             ),
//           ),
//           enabledBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(6.r),
//             borderSide: const BorderSide(
//               color: XColors.borderColor,
//               width: 0.5,
//             ),
//           ),
//           focusedBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(6.r),
//             borderSide: const BorderSide(
//               color: XColors.borderColor,
//               width: 0.5,
//             ),
//           ),
//         ),