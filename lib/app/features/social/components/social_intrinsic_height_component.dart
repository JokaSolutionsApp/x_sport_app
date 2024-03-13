import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SocialIntrinsicHeightComponent extends StatelessWidget {
  final Widget child;
  final String image;
  const SocialIntrinsicHeightComponent({
    super.key,
    required this.child,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: SizedBox(
          height: 10.sh,
          width: double.infinity,
          child: Stack(
            alignment: Alignment.center,
            fit: StackFit.expand,
            children: [
              Positioned(
                top: 0,
                width: 1.sw,
                height: 0.3.sh,
                child: ImageFiltered(
                  imageFilter: ImageFilter.blur(sigmaY: 5, sigmaX: 5),
                  child: Image.network(
                    image,
                    height: 225.h,
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              Positioned(
                top: 86.h,
                child: Container(
                  width: 1.sw,
                  height: 967.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60.sp),
                      topRight: Radius.circular(60.sp),
                    ),
                  ),
                  child: child,
                ),
              ),
              Positioned(
                top: 40.h,
                width: 1.sw,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        color: Colors.black26,
                        spreadRadius: 3,
                      ),
                    ],
                  ),
                  child: SizedBox(
                    height: 97.h,
                    width: 97.w,
                    child: CircleAvatar(
                      radius: 150,
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(image),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 15,
                child: SizedBox(
                  width: 1.sw,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_back_ios_new_sharp,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
