import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constance/app_constance.dart';
import '../../../../../main.dart';

class RegisterSuccessDialog extends StatelessWidget {
  const RegisterSuccessDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      titlePadding: EdgeInsets.zero,
      content: SizedBox(
        height: 211.h,
        width: 335.w,
        child: Column(
          children: [
            const Text(
              'تم تقديم الطلب بنجاح',
              style: TextStyle(
                color: XColors.black,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 10.h),
            const Text(
              'سيصلك الرد من الأكادديمية في حال اتمام التسجيل خلال 48 ساعة',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: XColors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 10.h),
            SizedBox(
              height: 30.h,
              width: 110.w,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(navigatorKey.currentContext!).pop();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: XColors.primary,
                  foregroundColor: const Color.fromRGBO(255, 255, 255, 1),
                  shape: const RoundedRectangleBorder(),
                ),
                child: const Text(
                  'حسنا',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
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
