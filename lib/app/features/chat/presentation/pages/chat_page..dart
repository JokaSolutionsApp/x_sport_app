import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:x_sport/core/utils/assets_managers/assets.gen.dart';
import 'package:x_sport/app/features/chat/presentation/components/chat_section.dart';
import 'package:x_sport/app/features/chat/presentation/components/message_input.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatPage> {
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
                borderRadius: const BorderRadius.only(
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
                    color: const Color(0xFF595959),
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
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 15.sp,
                              color: Colors.black),
                        ),
                        Text(
                          'Today 3:46 PM',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12.sp,
                              color: const Color(0xFF838383)),
                        ),
                      ],
                    ),
                    SizedBox(width: 14.w),
                    Stack(
                      children: [
                        SizedBox(
                          height: 66.w,
                          width: 66.w,
                          child: CircleAvatar(
                            backgroundImage: AssetsManager
                                .images.avatars.avatar0
                                .image(fit: BoxFit.cover)
                                .image,
                          ),
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
                        color: const Color(0xFF212121),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        body: const Column(
          children: [
            ChatComponent(),
            MessageInputComponent(),
          ],
        ));
  }
}
