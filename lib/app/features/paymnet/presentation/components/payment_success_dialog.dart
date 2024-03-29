import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/constance/app_constance.dart';
import '../../../../../main.dart';

class PaymentSuccessDialog extends StatelessWidget {
  const PaymentSuccessDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      titlePadding: EdgeInsets.zero,
      content: SizedBox(
        height: 188.h,
        width: 335.w,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: XColors.primary,
              ),
              child: const Icon(
                Icons.check,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10.h),
            const Text(
              '!تهانينا',
              style: TextStyle(
                color: XColors.primary,
              ),
            ),
            SizedBox(height: 10.h),
            const Text(
              'تم تأكيد الحجز بنجاح',
              style: TextStyle(
                color: XColors.black,
              ),
            ),
            SizedBox(height: 10.h),
            SizedBox(
              height: 30.h,
              width: 110.w,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(
                    width: 1,
                    color: XColors.primary,
                  ),
                  foregroundColor: XColors.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                ),
                onPressed: () {
                  Navigator.of(navigatorKey.currentContext!).pop();
                },
                child: const Text(
                  'تم',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
