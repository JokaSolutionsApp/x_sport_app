import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constance/app_constance.dart';
import '../../../../core/utils/assets_managers/assets.gen.dart';

class IntrinsicHeightComponent extends StatelessWidget {
  final Widget child;
  final String title;
  const IntrinsicHeightComponent(
      {super.key, required this.child, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            XColors.Background_Color1,
            XColors.Background_Color2
          ], begin: Alignment.centerLeft, end: Alignment.centerRight)),
          child: Padding(
            padding: EdgeInsets.only(top: 20.h),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.language_sharp,
                    color: Color(0xFFFFFFFF),
                  ),
                  onPressed: () {},
                  iconSize: 38.w,
                ),
              ],
            ),
          ),
        ),
        elevation: 0,
        toolbarHeight: 0,
      ),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Container(
          height: 1.sh,
          width: 1.sw,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [XColors.Background_Color1, XColors.Background_Color2],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight),
          ),
          child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            children: [
              Positioned(
                top: 36.h,
                width: 1.sw,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AssetsManager.images.main.xSportLogo.image(
                      width: 120.w,
                    ),
                    Text(
                      'Sport',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35.sp,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    width: 1.sw,
                    height: 737.h,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(60.sp),
                            topRight: Radius.circular(60.sp))),
                    child: SingleChildScrollView(
                      child: Column(children: [
                        Padding(
                          padding: EdgeInsets.only(top: 40.0.h),
                          child: Text(
                            title,
                            style: TextStyle(
                                color: XColors.Background_Color1,
                                fontSize: 28.sp,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        child,
                      ]),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
