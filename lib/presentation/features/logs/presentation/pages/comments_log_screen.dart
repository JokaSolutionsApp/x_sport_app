import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_sport/core/utils/assets_managers/assets.gen.dart';
import 'package:x_sport/core/widgets/global_app_bar.dart';
import 'package:x_sport/presentation/features/archives/presentation/components/posts_archive_components/post_archive_filter_dialog.dart';

class CommentsLogScreen extends StatelessWidget {
  const CommentsLogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F7F9),
      appBar: GlobalAppBar(
        hasSearch: false,
        title: 'أرشيف التعليقات',
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 30.w),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return PostsArchiveFilterDialog();
                            });
                      },
                      child: Container(
                          height: 33.w,
                          width: 33.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4.sp),
                              border: Border.all(color: Color(0xFFDBDBDB))),
                          child: Icon(
                            Icons.filter_alt,
                            color: Color(0xFF5E5E5E),
                          )),
                    ),
                    Text(
                      'يمكنك مراجعة المنشورات التي اعجبت بها',
                      style: GoogleFonts.tajawal(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF616161)),
                    ),
                  ],
                ),
                SizedBox(height: 24.w),
              ],
            ),
          ),
          ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (context, index) => SizedBox(height: 20.h),
              itemCount: 7,
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              itemBuilder: (context, index) {
                return SizedBox(
                  height: 140.w,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 140.w,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetsManager.images.social.socialImage
                              .image()
                              .image,
                        )),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 200.w,
                                child: Text(
                                  'يظهر هنا كابشن البوست وان طال يظهر جزء منه',
                                  textAlign: TextAlign.end,
                                  style: GoogleFonts.tajawal(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              SizedBox(width: 10.w),
                              Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(bottom: 5.w),
                                    height: 40.w,
                                    width: 40.w,
                                    child: CircleAvatar(
                                      backgroundImage: AssetsManager
                                          .images.avatars.avatar0
                                          .image(fit: BoxFit.cover)
                                          .image,
                                    ),
                                  ),
                                  Text(
                                    'يوم',
                                    style: GoogleFonts.tajawal(
                                        fontSize: 11.sp,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF797979)),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 14.w, top: 10.w),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 200.w,
                                  child: Text(
                                    'يظهر هنا كابشن البوست وان طال يظهر جزء منه',
                                    textAlign: TextAlign.end,
                                    style: GoogleFonts.tajawal(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10.w),
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(bottom: 5.w),
                                      height: 40.w,
                                      width: 40.w,
                                      child: CircleAvatar(
                                          backgroundImage: AssetsManager
                                              .images.avatars.avatar2
                                              .image(fit: BoxFit.cover)
                                              .image),
                                    ),
                                    Text(
                                      'يوم',
                                      style: GoogleFonts.tajawal(
                                          fontSize: 11.sp,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF797979)),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              }),
        ]),
      ),
    );
  }
}
