import 'package:flutter/material.dart';

import '../../../../core/constance/app_constance.dart';

class InputWidget extends StatelessWidget {
  final String? hint;
  final String? label;
  final bool? enabled;
  final bool? isObscureText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool showCursor;

  const InputWidget({
    this.hint,
    this.controller,
    this.validator,
    this.enabled,
    this.label,
    this.isObscureText,
    this.showCursor = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textDirection: TextDirection.rtl,
      textAlign: TextAlign.right,
      obscureText: isObscureText ?? false,
      enabled: enabled,
      validator: validator,
      controller: controller,
      showCursor: showCursor,
      style: const TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
        filled: true,
        suffixIcon: const Icon(
          Icons.send,
          color: Colors.white,
        ),
        hintStyle: const TextStyle(
          color: Colors.white,
        ),
        fillColor: Colors.white24,
        focusColor: Colors.white24,
        isDense: true,
        hintText: hint,
        label: label == null ? null : Text(label.toString()),
        contentPadding: EdgeInsets.zero,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(42),
          borderSide: const BorderSide(
            color: XColors.Field_Color2,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(42),
          borderSide: const BorderSide(
            color: XColors.Field_Color2,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(42),
          borderSide: const BorderSide(
            color: XColors.Field_Color2,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(42),
          borderSide: const BorderSide(
            color: Colors.red,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(42),
          borderSide: const BorderSide(
            color: Colors.red,
          ),
        ),
        // hintText: hinttext,
        // prefixIcon: icon,
        // alignLabelWithHint: true,
        // prefix: Text(prefix),
      ),
      // inputFormatters: inputformatter,
      // onSaved: onsaved,
      // onChanged: onchanged,
      // maxLines: maxlines,
      // keyboardType: keyboardtype,
      // focusNode: foucsNode,
    );
  }
}
