import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/constance/app_constance.dart';

class PaymentHistoryComponent extends StatelessWidget {
  const PaymentHistoryComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 14.w, horizontal: 18.w),
      padding: EdgeInsets.symmetric(vertical: 12.w, horizontal: 18.w),
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8.sp)),
      child: Column(
        children: [
          Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 33.w,
                      width: 33.w,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              offset: Offset(0, 4.w),
                              blurRadius: 4)
                        ],
                        border: Border.all(
                            color: const Color(0xFFD9D9D9), width: 0.5.w),
                        borderRadius: BorderRadius.circular(5.sp),
                      ),
                      child: Icon(
                        Icons.filter_tilt_shift,
                        color: const Color(0xFF595959),
                        size: 22.sp,
                      ),
                    ),
                  ),
                  SizedBox(width: 6.w),
                  Text(
                    'عرض الكل',
                    style: TextStyle(
                        color: XColors.primary,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Text(
                'تاريخ المدفوعات',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          ListView.builder(
              shrinkWrap: true,
              itemCount: 5,
              itemExtent: 50.h,
              itemBuilder: (context, index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'المبلغ المدفوع',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'اسم الملعب المحجوز',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10.sp,
                              ),
                            ),
                            Text(
                              'التاريخ باليوم والساعة',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10.sp,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10.w),
                          height: 8.w,
                          width: 8.w,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ],
                );
              })
        ],
      ),
    );
  }
}
