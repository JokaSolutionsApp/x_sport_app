import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_sport/presentation/features/chat/presentation/components/chat_section.dart';
import 'package:x_sport/presentation/features/chat/presentation/components/message_input.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          toolbarHeight: 82.w,
          flexibleSpace: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 4.w),
                      blurRadius: 14,
                      color: Colors.black.withOpacity(0.1))
                ],
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(22),
                    bottomRight: Radius.circular(22))),
            padding: EdgeInsets.only(left: 10.w, top: 30.w, right: 10.w),
            height: 120.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.more_vert,
                    size: 30.sp,
                    color: Color(0xFF595959),
                  ),
                ),
                Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'اسم المستخدم',
                          style: GoogleFonts.tajawal(
                              fontWeight: FontWeight.w700,
                              fontSize: 15.sp,
                              color: Colors.black),
                        ),
                        Text(
                          'Today 3:46 PM',
                          style: GoogleFonts.tajawal(
                              fontWeight: FontWeight.w400,
                              fontSize: 12.sp,
                              color: Color(0xFF838383)),
                        ),
                      ],
                    ),
                    SizedBox(width: 14.w),
                    Stack(
                      children: [
                        Container(
                          height: 66.w,
                          width: 66.w,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage('assets/images/avatar0.png'),
                                fit: BoxFit.cover,
                              )),
                        ),
                        Positioned(
                          left: 1.w,
                          bottom: 2.w,
                          child: Container(
                            width: 15.w,
                            height: 15.w,
                            decoration: const ShapeDecoration(
                              color: Color(0xFF3DEC00),
                              shape: OvalBorder(),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 14.w),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 27.sp,
                        color: Color(0xFF212121),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            ChatComponent(),
            MessageInputComponent(),
          ],
        ));
  }
}
