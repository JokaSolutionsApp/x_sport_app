import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/assets_managers/assets.gen.dart';
import '../../../../../core/widgets/global_app_bar.dart';

class StoriesArchivePage extends StatelessWidget {
  const StoriesArchivePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F7F9),
      appBar: const GlobalAppBar(
        hasSearch: false,
        title: 'ارشيف القصص',
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 30.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'يمكنك مراجعة المنشورات التي قمت بمشاركتها سابقاََ',
                  style: TextStyle(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF616161)),
                ),
                SizedBox(height: 24.w),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Row(
                        children: [
                          const Icon(
                            Icons.keyboard_arrow_up_rounded,
                          ),
                          Text(
                            'الاحدث',
                            style: TextStyle(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10.w),
                    GestureDetector(
                      onTap: () {},
                      child: Row(
                        children: [
                          const Icon(
                            Icons.keyboard_arrow_down_rounded,
                          ),
                          Text(
                            'الاقدم',
                            style: TextStyle(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 12.w,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 150.w,
                  height: 1,
                  color: const Color(0xFFCFCFCF),
                ),
                Text(
                  '2023',
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF909090),
                  ),
                ),
                Container(
                  width: 150.w,
                  height: 1,
                  color: const Color(0xFFCFCFCF),
                ),
              ],
            ),
          ),
          SizedBox(height: 12.w),
          GridView.builder(
              shrinkWrap: true,
              physics:
                  const NeverScrollableScrollPhysics(), // Disable scrolling
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 170.h,
                crossAxisCount: 3,
              ),
              itemCount: 7,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetsManager.images.social.socialImage
                            .image()
                            .image,
                      )),
                    ),
                    Positioned(
                      height: 38.w,
                      width: 38.w,
                      top: 8.w,
                      left: 8.w,
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 2.w),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(3.sp)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              '30',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              ' فبراير',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              }),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 12.w,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 150.w,
                  height: 1,
                  color: const Color(0xFFCFCFCF),
                ),
                Text(
                  '2022',
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF909090),
                  ),
                ),
                Container(
                  width: 150.w,
                  height: 1,
                  color: const Color(0xFFCFCFCF),
                ),
              ],
            ),
          ),
          SizedBox(height: 12.w),
          GridView.builder(
              shrinkWrap: true,
              physics:
                  const NeverScrollableScrollPhysics(), // Disable scrolling
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 170.h,
                crossAxisCount: 3,
              ),
              itemCount: 4,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetsManager.images.social.socialImage
                            .image()
                            .image,
                      )),
                    ),
                    Positioned(
                      height: 38.w,
                      width: 38.w,
                      top: 8.w,
                      left: 8.w,
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 2.w),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(3.sp)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              '30',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              ' فبراير',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              }),
        ]),
      ),
    );
  }
}
