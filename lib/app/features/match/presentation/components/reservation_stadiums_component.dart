import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/assets_managers/assets.gen.dart';
import '../../../courts/presentation/pages/courts_page.dart';

class ReservationStadiumsComponent extends StatelessWidget {
  final ValueNotifier<int> selectedIdx = ValueNotifier<int>(0);

  ReservationStadiumsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.h,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 2.w),
        reverse: true,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemExtent: 170.w,
        itemCount: 4,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 6.w),
            child: GestureDetector(
              onTap: () {
                selectedIdx.value = index;
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CourtsPage()));
              },
              child: Container(
                height: 32.h,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4,
                          offset: Offset(0, 2.w))
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.sp)),
                child: Column(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12.sp),
                              topRight: Radius.circular(12.sp)),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image:
                                AssetsManager.images.courts.court.image().image,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(right: 10.w),
                        alignment: Alignment.centerRight,
                        child: Text(
                          'اسم الملعب',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
