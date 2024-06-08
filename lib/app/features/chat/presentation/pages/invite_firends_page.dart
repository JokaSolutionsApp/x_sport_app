import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport/main.dart';

import '../../../../../core/widgets/global_app_bar.dart';
import '../../../profile/presentation/components/invite_firends_components.dart/my_friends_component.dart';
import 'create_group_page.dart';

class InviteFirendsPage extends StatelessWidget {
  const InviteFirendsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const GlobalAppBar(),
      body: SizedBox(
        child: Padding(
          padding: EdgeInsets.only(top: 20.w, left: 20.w, right: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'انشاء مجموعة جديدة',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(width: 12.w),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(navigatorKey.currentContext!).push(
                          MaterialPageRoute(
                              builder: (context) => const CreateGroupPage()));
                    },
                    child: Container(
                      height: 50.w,
                      width: 50.w,
                      decoration: const BoxDecoration(
                        color: Color(0xFF2492F8),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.people,
                        color: Colors.white,
                        size: 32.sp,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.w),
              Text(
                'دعوة صديق عبر واتس اب',
                style: TextStyle(
                  color: const Color(0xFF777777),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 20.w),
              MyFirendsComponent(
                leadingTitle: 'دعوة',
                trailingTitle: '+9741123456464',
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
