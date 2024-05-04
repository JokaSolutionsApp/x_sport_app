import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../controllers/fileds_bloc.dart';
import 'status_dialog.dart';
import '../../../../../widgets/text_fields/no_border_textfield_widget.dart';
import '../../../../../../core/constance/app_constance.dart';
import '../../../../../../main.dart';

class ResetEmailDialog extends StatefulWidget {
  const ResetEmailDialog({
    super.key,
  });

  @override
  State<ResetEmailDialog> createState() => _ResetEmailDialogState();
}

class _ResetEmailDialogState extends State<ResetEmailDialog> {
  late final TextEditingController password;
  late final TextEditingController email;
  @override
  initState() {
    super.initState();
    password = TextEditingController();
    email = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Center(
            child: Text(
              'تغيير البريد الالكتروني',
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          NoBorderTextFieldWidget(
            hintText: 'ادخل كبمة المرور',
            labelText: 'ادخل كبمة المرور',
            controller: password,
            keyboardType: TextInputType.emailAddress,
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
            hintText: 'البريد الالكتروني الجديد',
            labelText: 'البريد الالكتروني الجديد',
            controller: email,
            keyboardType: TextInputType.emailAddress,
            textStream: editProfileStream.email,
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
            onChanged: editProfileStream.changeEmail,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Center(
              child: SizedBox(
                height: 40.h,
                width: 130.w,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(navigatorKey.currentContext!).pop();
                    showDialog(
                      context: context,
                      builder: (context) => const StatusDialog(
                        title: 'تم تغيير البريد الالكتروني بنجاح',
                        content:
                            'سيتم تسجيل الخروج من حسابك, يرجى الدخول مرة أخرى باستخدام البريد الالكتروني الجديد',
                        isSuccess: true,
                      ),
                    );
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
    );
  }
}
