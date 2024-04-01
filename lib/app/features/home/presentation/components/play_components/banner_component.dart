import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport/core/constance/app_constance.dart';

import '../../../../../../core/utils/assets_managers/assets.gen.dart';

class BannerComponent extends StatelessWidget {
  const BannerComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.18.sh,
      width: 0.88.sw,
      decoration: BoxDecoration(
        color: XColors.primary,
        borderRadius: BorderRadius.circular(20),
      ),
      child:
          Stack(alignment: Alignment.center, fit: StackFit.expand, children: [
        Positioned(
          top: 10.w,
          left: 4.w,
          child: AssetsManager.images.play.dots.image(),
        ),
        Padding(
          padding: EdgeInsets.only(right: 10.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  // Navigator.of(context).pop();
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 50.w,
                  width: 50.w,
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    size: 22.sp,
                  ),
                ),
              ),
              SizedBox(width: 10.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('X sport بطولات',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                      )),
                  Text('x sport اطلع على البطولات المنظمة من قبل',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      )),
                ],
              ),
            ],
          ),
        )
      ]),
    );
  }
}
