import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport/app/controllers/fileds_bloc.dart';
import 'package:x_sport/app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:x_sport/app/widgets/text_fields/no_border_textfield_widget.dart';
import 'package:x_sport/core/constance/app_constance.dart';
import 'package:x_sport/main.dart';

class ResetPasswordDialog extends StatefulWidget {
  const ResetPasswordDialog({
    super.key,
  });

  @override
  State<ResetPasswordDialog> createState() => _ResetPasswordDialogState();
}

class _ResetPasswordDialogState extends State<ResetPasswordDialog> {
  late final TextEditingController oldPassword;
  late final TextEditingController newPassword;
  late final TextEditingController confirmPassword;
  @override
  initState() {
    super.initState();
    oldPassword = TextEditingController();
    newPassword = TextEditingController();
    confirmPassword = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Center(
              child: Text(
                'تغيير كلمة المرور',
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            NoBorderTextFieldWidget(
              hintText: 'كلمة المرور القديمة',
              labelText: 'كلمة المرور القديمة',
              controller: oldPassword,
              keyboardType: TextInputType.name,
              textStream: editProfileStream.password,
              hintStyle: TextStyle(
                color: XColors.grey4,
                fontSize: 18.sp,
                fontWeight: FontWeight.w400,
              ),
              inputBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: XColors.grey4,
                  width: 1.2.w,
                ),
              ),
              onChanged: editProfileStream.changePassword,
            ),
            SizedBox(
              height: 8.h,
            ),
            NoBorderTextFieldWidget(
              hintText: 'كلمة المرور الجديدة',
              labelText: 'كلمة المرور الجديدة',
              controller: newPassword,
              keyboardType: TextInputType.name,
              textStream: editProfileStream.newPassword,
              hintStyle: TextStyle(
                color: XColors.grey4,
                fontSize: 18.sp,
                fontWeight: FontWeight.w400,
              ),
              inputBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: XColors.grey4,
                  width: 1.2.w,
                ),
              ),
              onChanged: editProfileStream.changeNewPassword,
            ),
            SizedBox(
              height: 8.h,
            ),
            NoBorderTextFieldWidget(
              hintText: 'تأكيد كلمة المرور الجديدة',
              labelText: 'تأكيد كلمة المرور الجديدة',
              controller: confirmPassword,
              keyboardType: TextInputType.name,
              textStream: editProfileStream.confNewPassword,
              hintStyle: TextStyle(
                color: XColors.grey4,
                fontSize: 18.sp,
                fontWeight: FontWeight.w400,
              ),
              inputBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: XColors.grey4,
                  width: 1.2.w,
                ),
              ),
              onChanged: editProfileStream.changeConfNewPassword,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Center(
                child: SizedBox(
                  height: 40.h,
                  width: 130.w,
                  child: ElevatedButton(
                    onPressed: () {
                      context
                          .read<AuthBloc>()
                          .add(const AuthEvent.changePassword());

                      Navigator.of(navigatorKey.currentContext!).pop();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: XColors.primary,
                      foregroundColor: XColors.white,
                      shape: const LinearBorder(),
                    ),
                    child: const Text(
                      'تاكيد',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
