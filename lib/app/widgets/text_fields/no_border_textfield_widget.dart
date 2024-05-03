import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
  });

  @override
  State<NoBorderTextFieldWidget> createState() =>
      _NoBorderTextFieldWidgetState();
}

class _NoBorderTextFieldWidgetState extends State<NoBorderTextFieldWidget> {
  late bool isHidden;
  @override
  void initState() {
    isHidden = widget.isObscureText;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 34.0.h),
      child: SizedBox(
        width: 0.96.sw,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              widget.labelText ?? '',
              style: TextStyle(
                color: const Color(0xFF979797),
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            StreamBuilder(
              stream: widget.textStream,
              builder: (context, snapshot) {
                return SizedBox(
                  height: 50.h,
                  child: TextFormField(
                    keyboardType: widget.keyboardType,
                    style: TextStyle(
                        color: XColors.Background_Color1,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w400),
                    controller: widget.controller,
                    textAlign: TextAlign.end,
                    textInputAction: TextInputAction.next,
                    onChanged: (value) => widget.onChanged(value),
                    decoration: InputDecoration(
                      hintStyle: widget.hintStyle ??
                          TextStyle(
                            color: XColors.Background_Color1,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w400,
                          ),
                      hintText: widget.hintText,
                      suffixIconColor: Colors.black,
                      enabledBorder: widget.inputBorder ??
                          UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1.2.w),
                          ),
                      focusedBorder: widget.inputBorder ??
                          UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1.2.w),
                          ),
                      errorBorder: widget.inputBorder ??
                          UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1.2.w),
                          ),
                      focusedErrorBorder: widget.inputBorder ??
                          UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1.2.w),
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
                      ? Text(
                          textAlign: TextAlign.end,
                          snapshot.error.toString(),
                          style: const TextStyle(
                              color: Color.fromARGB(201, 244, 67, 54)),
                        )
                      : const SizedBox.shrink();
                })
          ],
        ),
      ),
    );
  }
}
