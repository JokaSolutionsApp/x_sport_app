import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport/core/localization/locale_externsion.dart';
import 'package:x_sport/core/localization/locale_keys.g.dart';
import 'package:x_sport/core/utils/assets_managers/assets.gen.dart';

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
  final bool hasForgotPassword;

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
    this.hasForgotPassword = false,
  });

  @override
  State<NoBorderTextFieldWidget> createState() =>
      _NoBorderTextFieldWidgetState();
}

class _NoBorderTextFieldWidgetState extends State<NoBorderTextFieldWidget> {
  bool isHidden = true;
  @override
  void initState() {
    super.initState();
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
            Stack(
              alignment: Alignment.topCenter,
              clipBehavior: Clip.none,
              children: [
                StreamBuilder(
                  stream: widget.textStream,
                  builder: (context, snapshot) {
                    return SizedBox(
                      height: 37.h,
                      child: TextFormField(
                        focusNode: widget.focusNode,
                        cursorHeight: 27.0.h,
                        cursorRadius: Radius.circular(2.0),
                        cursorColor: XColors.Background_Color1,
                        keyboardType: widget.keyboardType,
                        style: TextStyle(
                            color: XColors.Background_Color1,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w400),
                        controller: widget.controller,
                        obscureText: isHidden,
                        textAlign: context.locale.isRTL
                            ? TextAlign.end
                            : TextAlign.start,
                        textInputAction: TextInputAction.done,
                        onChanged: (value) => widget.onChanged(value),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 9.h, horizontal: 0.w),
                          suffixIcon: Offstage(
                            offstage: widget.isObscureText == false,
                            child: GestureDetector(
                              child: AssetsManager.icons.obscure.image(),
                              onTap: () {
                                setState(() {
                                  isHidden = !isHidden;
                                });
                              },
                            ),
                          ),
                          hintStyle: widget.hintStyle ??
                              TextStyle(
                                color: XColors.circle_border_color,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                                height: getHintHeight(),
                              ),
                          hintText: widget.hintText,
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1.2.w),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: XColors.primary, width: 1.2.w),
                          ),
                          errorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: XColors.fail_red, width: 1.2.w),
                          ),
                          focusedErrorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: XColors.fail_red, width: 1.2.w),
                          ),
                        ),
                      ),
                    );
                  },
                ),
                Positioned(
                  top: 40.h,
                  left: 0,
                  right: 0,
                  child: StreamBuilder(
                      stream: widget.textStream,
                      builder: (context, snapshot) {
                        final hasError = snapshot.hasError;
                        return SizedBox(
                          width: 0.96.sw,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              hasError
                                  ? Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        SizedBox(height: 5.h),
                                        Text(
                                          textAlign: TextAlign.start,
                                          snapshot.error.toString(),
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              color: XColors.black),
                                        ),
                                      ],
                                    )
                                  : SizedBox.shrink(),
                              widget.hasForgotPassword
                                  ? TextButton(
                                      style: TextButton.styleFrom(
                                          padding: EdgeInsets.zero,
                                          minimumSize: Size(50.w, 30.h),
                                          tapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          alignment: Alignment.centerLeft),
                                      onPressed: () {},
                                      child: Text(
                                        LocaleKeys.forgot_your_password.tr(),
                                        style: TextStyle(
                                            color: XColors.grey5,
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.w400,
                                            decoration:
                                                TextDecoration.underline),
                                      ),
                                    )
                                  : SizedBox.shrink(),
                            ],
                          ),
                        );
                      }),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  double getHintHeight() {
    if (widget.isObscureText) {
      return 1.4.h;
    } else {
      if (Platform.isAndroid) {
        return 2.h;
      } else {
        return 2.h;
      }
    }
  }
}
