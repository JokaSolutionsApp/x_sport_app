import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:x_sport/core/utils/assets_managers/assets.gen.dart';
import 'package:x_sport/core/widgets/floating_action_button.dart';
import 'package:x_sport/core/widgets/global_app_bar.dart';
import 'package:x_sport/app/features/profile/presentation/components/invite_firends_components.dart/my_friends_component.dart';

class CreateGroupPage extends StatelessWidget {
  const CreateGroupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const GlobalAppBar(title: 'انشاء مجموعة جديدة'),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton:
          FloatingButton(iconData: Icons.arrow_back, onPressed: () {}),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.all(20.w),
            child: Text(
              'دعوة صديق عبر واتس اب',
              style: TextStyle(
                color: const Color(0xFF777777),
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
                reverse: true,
                separatorBuilder: (context, index) {
                  return SizedBox(width: 20.w);
                },
                itemCount: 15,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      SizedBox(
                        height: 43.w,
                        width: 43.w,
                        child: CircleAvatar(
                          backgroundImage: AssetsManager.images.avatars.avatar0
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
          MyFirendsComponent(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            flex: 8,
            leadingTitle: 'اضافة',
            trailingTitle: 'اسم المستخدم',
            onTap: () {},
          )
        ],
      ),
    );
  }
}
