import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constance/app_constance.dart';

class TextFieldWidget extends StatefulWidget {
  final TextEditingController controller;
  final String labelText;
  final TextInputType keyboardType;
  final Function onChanged;
  final Color? color;
  final Stream textStream;
  final bool isObscureText;

  const TextFieldWidget({
    super.key,
    required this.labelText,
    required this.controller,
    required this.keyboardType,
    required this.textStream,
    required this.onChanged,
    this.color,
    this.isObscureText = false,
  });

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  late bool isHidden;
  @override
  void initState() {
    isHidden = widget.isObscureText;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 34.0.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 4.0.h),
            child: Text(widget.labelText,
                style: TextStyle(
                    color: XColors.Background_Color1,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400)),
          ),
          StreamBuilder(
              stream: widget.textStream,
              builder: (context, snapshot) {
                TextDirection textDirection = TextDirection.rtl;
                if (widget.controller.text.isNotEmpty) {
                  // Check if the text starts with a digit or '+' sign
                  bool startsWithDigitOrPlus =
                      RegExp(r'^[\d+]').hasMatch(widget.controller.text);
                  // Check if the text ends with '@'
                  bool endsWithAtSign = widget.controller.text.endsWith('@');

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
                    cursorColor: widget.color ?? XColors.Background_Color1,
                    textDirection: textDirection,
                    keyboardType: widget.keyboardType,
                    style: TextStyle(
                        height: 1.w,
                        color: XColors.Background_Color1,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w400),
                    controller: widget.controller,
                    obscureText: isHidden,
                    textAlign: TextAlign.right,
                    textInputAction: TextInputAction.next,
                    onChanged: (value) => widget.onChanged(value),
                    decoration: InputDecoration(
                      prefixIcon: widget.isObscureText
                          ? IconButton(
                              icon: const Icon(Icons.remove_red_eye),
                              iconSize: 22.sp,
                              onPressed: () {
                                setState(() {
                                  isHidden = !isHidden;
                                });
                              },
                            )
                          : null,
                      suffixIconColor: Colors.black,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: XColors.Field_Color1, width: 0.5.w),
                        borderRadius:
                            BorderRadius.all(Radius.circular(13.0.sp)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: XColors.Field_Color1, width: 0.5.w),
                        borderRadius:
                            BorderRadius.all(Radius.circular(13.0.sp)),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.all(Radius.circular(13.0.sp)),
                        borderSide: BorderSide(
                            color: XColors.Field_Color1, width: 0.5.w),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.all(Radius.circular(13.0.sp)),
                        borderSide: BorderSide(
                            color: XColors.Field_Color1, width: 0.5.w),
                      ),
                    ),
                  ),
                );
              }),
          StreamBuilder(
              stream: widget.textStream,
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
      ),
    );
  }
}
