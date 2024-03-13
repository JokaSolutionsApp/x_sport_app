import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport/core/constance/app_constance.dart';
import 'package:x_sport/main.dart';

class PaymentFailDialog extends StatelessWidget {
  const PaymentFailDialog({
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
                color: XColors.fail_red,
              ),
              child: const Icon(
                Icons.close,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10.h),
            const Text(
              '!عذرا',
              style: TextStyle(
                color: XColors.fail_red,
              ),
            ),
            SizedBox(height: 10.h),
            const Text(
              'لم يتم تأكيد الحجز',
              style: TextStyle(
                color: XColors.black,
              ),
            ),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 30.h,
                  width: 110.w,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(
                        width: 1,
                        color: XColors.fail_red,
                      ),
                      foregroundColor: XColors.fail_red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.r),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(navigatorKey.currentContext!).pop();
                    },
                    child: const Text(
                      'تبليغ',
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                  width: 110.w,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(
                        width: 1,
                        color: XColors.black,
                      ),
                      foregroundColor: XColors.black,
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
          ],
        ),
      ),
    );
  }
}
