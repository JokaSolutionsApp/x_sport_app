import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:x_sport/core/utils/assets_managers/assets.gen.dart';
import 'package:x_sport/core/widgets/floating_action_button.dart';
import 'package:x_sport/core/widgets/global_app_bar.dart';

class NewGroupChatPage extends StatelessWidget {
  const NewGroupChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const GlobalAppBar(
        title: 'مجموعة جديدة',
        hasSearch: false,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton:
          FloatingButton(iconData: Icons.done, onPressed: () {}),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 20.w, left: 20.w, top: 20.w),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                    child: TextField(
                  decoration: InputDecoration(
                      hintTextDirection: TextDirection.rtl,
                      hintText: 'اسم المجموعة (اختياري)',
                      hintStyle: TextStyle(
                        color: const Color(0xFFA4A4A4),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        height: 0,
                      )),
                )),
                GestureDetector(
                  child: Container(
                      margin: const EdgeInsets.only(left: 10),
                      height: 50.w,
                      width: 50.w,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xFFE7E7E7)),
                      child: const Icon(
                        Icons.image,
                        color: Color(0xFFC8C8C8),
                      )),
                ),
              ],
            ),
          ),
          SizedBox(height: 27.w),
          Divider(
            color: const Color(0xFF6B6B6B),
            thickness: 0.5.w,
          ),
          SizedBox(height: 12.w),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Transform.rotate(
                  angle: 0.2,
                  child: GestureDetector(
                    child: Icon(
                      Icons.settings,
                      size: 38.sp,
                    ),
                  ),
                ),
                Text('اذونات المجموعة',
                    style: TextStyle(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w500,
                    ))
              ],
            ),
          ),
          SizedBox(height: 12.w),
          Divider(
            color: const Color(0xFF6B6B6B),
            thickness: 0.5.w,
          ),
          SizedBox(
            height: 100.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                  child: Text('المشاركون',
                      style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w500,
                      )),
                ),
                Expanded(
                  child: ListView.separated(
                      reverse: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(width: 20.w);
                      },
                      itemCount: 15,
                      padding: EdgeInsets.only(right: 20.w),
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            SizedBox(
                              height: 43.w,
                              width: 43.w,
                              child: CircleAvatar(
                                backgroundImage: AssetsManager
                                    .images.avatars.avatar0
                                    .image(fit: BoxFit.cover)
                                    .image,
                              ),
                            ),
                            SizedBox(width: 12.w),
                            Text(
                              'اسم المستخدم',
                              style: TextStyle(
                                color: const Color(0xFF777777),
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        );
                      }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
