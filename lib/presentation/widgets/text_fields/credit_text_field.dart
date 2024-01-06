import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/constance/app_constance.dart';

class CreditTextField extends StatefulWidget {
  final TextEditingController controller;
  final String labelText;
  final TextInputType keyboardType;
  final Function onChanged;

  final Stream textStream;
  final bool isObscureText;

  const CreditTextField({
    super.key,
    required this.labelText,
    required this.controller,
    required this.keyboardType,
    required this.textStream,
    required this.onChanged,
    this.isObscureText = false,
  });

  @override
  State<CreditTextField> createState() => _CreditTextFieldState();
}

class _CreditTextFieldState extends State<CreditTextField> {
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
            child: Text(
              widget.labelText,
              style: GoogleFonts.tajawal(
                textStyle: TextStyle(
                    color: XColors.Background_Color1,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          StreamBuilder(
              stream: widget.textStream,
              builder: (context, snapshot) {
                return SizedBox(
                  width: 0.83.sw,
                  height: 50.h,
                  child: TextFormField(
                    cursorHeight: 21.w,
                    cursorColor: XColors.Background_Color1,
                    textDirection: TextDirection.rtl,
                    keyboardType: widget.keyboardType,
                    style: GoogleFonts.tajawal(
                      textStyle: TextStyle(
                          height: 1.w,
                          color: XColors.Background_Color1,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w400),
                    ),
                    controller: widget.controller,
                    obscureText: isHidden,
                    textAlign: TextAlign.start,
                    textInputAction: TextInputAction.next,
                    onChanged: (value) => widget.onChanged(value),
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFFE6E6E6), width: 0.5.w),
                        borderRadius: BorderRadius.all(Radius.circular(6.sp)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFFE6E6E6), width: 0.5.w),
                        borderRadius: BorderRadius.all(Radius.circular(6.sp)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFFE6E6E6), width: 0.5.w),
                        borderRadius: BorderRadius.all(Radius.circular(6.sp)),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6.sp)),
                        borderSide:
                            BorderSide(color: Color(0xFFE6E6E6), width: 0.5.w),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6.sp)),
                        borderSide:
                            BorderSide(color: Color(0xFFE6E6E6), width: 0.5.w),
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
                        textAlign: TextAlign.center,
                        snapshot.error.toString(),
                        style: const TextStyle(
                            color: Color.fromARGB(201, 244, 67, 54)),
                      )
                    : const SizedBox.shrink();
              })
        ],
      ),
    );
  }
}
