import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_sport/core/widgets/global_app_bar.dart';
import 'package:x_sport/presentation/components/invite_firends_components.dart/my_friends_component.dart';
import 'package:x_sport/presentation/features/chat/presentation/pages/create_group_screen.dart';

class InviteFirendsScreen extends StatelessWidget {
  const InviteFirendsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalAppBar(),
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
                    style: GoogleFonts.tajawal(
                      color: Colors.black,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(width: 12.w),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CreateGroupScreen()));
                    },
                    child: Container(
                      height: 50.w,
                      width: 50.w,
                      decoration: BoxDecoration(
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
                style: GoogleFonts.tajawal(
                  color: Color(0xFF777777),
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
