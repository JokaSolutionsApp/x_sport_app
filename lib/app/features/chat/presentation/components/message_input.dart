import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:x_sport/core/constance/app_constance.dart';
import 'package:x_sport/app/controllers/chat_bloc/chat_bloc.dart';

class MessageInputComponent extends StatefulWidget {
  const MessageInputComponent({super.key});

  @override
  State<MessageInputComponent> createState() => _MessageInputComponentState();
}

class _MessageInputComponentState extends State<MessageInputComponent> {
  final TextEditingController _controller = TextEditingController();

  List<Map<String, dynamic>> messages = [];

  @override
  void initState() {
    super.initState();
  }

  void sendMessage(String text) async {
    if (text.isEmpty) return;
    setState(() {
      addMessage(
        '',
        // Message(text: DialogText(text: [text])),
        true,
      );
    });

    // dialogFlowtter.projectId = "deimos-apps-0905";

    // DetectIntentResponse response = await dialogFlowtter.detectIntent(
    //   queryInput: QueryInput(text: TextInput(text: text)),
    // );

    // if (response.message == null) return;
    // setState(() {
    //   addMessage(response.message!);
    // });
  }

  void addMessage(String message, [bool isUserMessage = false]) {
    messages.add({
      'message': message,
      'isUserMessage': isUserMessage,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 18.w),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 45.w,
                  width: 45.w,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xFF2492F8)),
                  child: const Icon(
                    Icons.mic,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(width: 8.0.w),
              SizedBox(
                width: 0.8.sw,
                height: 55.w,
                child: TextField(
                  onSubmitted: (value) {
                    context
                        .read<ChatBloc>()
                        .add(ChatEvent.sendMessage(_controller.text));
                    _controller.clear();
                  },
                  controller: _controller,
                  decoration: InputDecoration(
                    hintTextDirection: TextDirection.rtl,
                    hintText: 'اكتب رسالة...',
                    hintStyle:
                        TextStyle(color: Color(0xFFA3A3A3), fontSize: 16.sp),
                    fillColor: Colors.white,
                    filled: true,
                    prefixIcon: Icon(
                      CupertinoIcons.paperclip,
                      size: 28.sp,
                      color: Color(0xFFA3A3A3),
                    ),
                    suffixIcon: Icon(
                      Icons.sentiment_satisfied_alt,
                      size: 34.sp,
                      color: Color(0xFFA3A3A3),
                    ),
                    border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xFFE6E6E6), width: 0.5.w),
                      borderRadius: BorderRadius.all(Radius.circular(50.sp)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xFFE6E6E6), width: 0.5.w),
                      borderRadius: BorderRadius.all(Radius.circular(50.sp)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xFFE6E6E6), width: 0.5.w),
                      borderRadius: BorderRadius.all(Radius.circular(50.sp)),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50.sp)),
                      borderSide:
                          BorderSide(color: Color(0xFFE6E6E6), width: 0.5.w),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50.sp)),
                      borderSide:
                          BorderSide(color: Color(0xFFE6E6E6), width: 0.5.w),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
