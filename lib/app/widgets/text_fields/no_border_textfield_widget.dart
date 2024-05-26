import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport/core/localization/locale_externsion.dart';

import '../../../core/constance/app_constance.dart';

class NoBorderTextFieldWidget extends StatefulWidget {
  final TextEditingController controller;
  final String? labelText;
  final String? hintText;
  final TextInputType keyboardType;
  final Function onChanged;
  final TextStyle? hintStyle;
  final Stream textStream;
  final InputBorder? inputBorder;
  final bool isObscureText;
  final FocusNode? focusNode;
  final double? bttomPadding;

  const NoBorderTextFieldWidget({
    super.key,
    this.labelText,
    this.hintText,
    required this.controller,
    required this.keyboardType,
    required this.textStream,
    required this.onChanged,
    this.hintStyle,
    this.inputBorder,
    this.isObscureText = false,
    this.focusNode,
    this.bttomPadding,
  });

  @override
  State<NoBorderTextFieldWidget> createState() =>
      _NoBorderTextFieldWidgetState();
}

class _NoBorderTextFieldWidgetState extends State<NoBorderTextFieldWidget> {
  late bool isHidden;
  @override
  void initState() {
    super.initState();

    isHidden = widget.isObscureText;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: widget.bttomPadding ?? 30.0.h),
      child: SizedBox(
        width: 0.96.sw,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.labelText ?? '',
              style: TextStyle(
                color: XColors.black,
                fontSize: 17.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            StreamBuilder(
              stream: widget.textStream,
              builder: (context, snapshot) {
                return SizedBox(
                  height: 27.h,
                  child: TextFormField(
                    focusNode: widget.focusNode,
                    cursorHeight: 20.0.h,
                    cursorColor: XColors.Background_Color1,
                    keyboardType: widget.keyboardType,
                    style: TextStyle(
                        color: XColors.Background_Color1,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w400),
                    controller: widget.controller,
                    obscureText: isHidden,
                    textAlign:
                        context.locale.isRTL ? TextAlign.end : TextAlign.start,
                    textInputAction: TextInputAction.done,
                    onChanged: (value) => widget.onChanged(value),
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 7.h, horizontal: 0.w),
                      suffix: widget.isObscureText
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
                      hintStyle: widget.hintStyle ??
                          TextStyle(
                            color: XColors.circle_border_color,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            height: widget.isObscureText ? 1.4.h : 0,
                          ),
                      hintText: widget.hintText,
                      suffixIconColor: Colors.black,
                      enabledBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black, width: 1.2.w),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: XColors.primary, width: 1.2.w),
                      ),
                      errorBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: XColors.fail_red, width: 1.2.w),
                      ),
                      focusedErrorBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: XColors.fail_red, width: 1.2.w),
                      ),
                    ),
                  ),
                );
              },
            ),
            StreamBuilder(
                stream: widget.textStream,
                builder: (context, snapshot) {
                  final hasError = snapshot.hasError;
                  return hasError
                      ? Column(
                          children: [
                            SizedBox(height: 5.h),
                            Text(
                              textAlign: TextAlign.end,
                              snapshot.error.toString(),
                              style: TextStyle(
                                  fontSize: 12.sp, color: XColors.fail_red),
                            ),
                          ],
                        )
                      : const SizedBox.shrink();
                })
          ],
        ),
      ),
    );
  }
}
