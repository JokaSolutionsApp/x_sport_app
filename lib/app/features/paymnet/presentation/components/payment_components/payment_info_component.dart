import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/constance/app_constance.dart';

class PaymentInfoComponent extends StatelessWidget {
  const PaymentInfoComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: 167.w,
          height: 88.h,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.sp),
              border: Border.all(color: const Color(0xFFD0D0D0), width: 0.5.w)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'نصف المبلغ',
                style: TextStyle(fontSize: 15.sp),
              ),
              Text(
                '\$30',
                style: TextStyle(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w400,
                    color: XColors.primary),
              ),
            ],
          ),
        ),
        Container(
          width: 167.w,
          height: 88.h,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.sp),
              border: Border.all(color: const Color(0xFFD0D0D0), width: 0.5.w)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'كل المبلغ',
                style: TextStyle(fontSize: 15.sp),
              ),
              Text(
                '\$60',
                style: TextStyle(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w400,
                    color: XColors.primary),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
