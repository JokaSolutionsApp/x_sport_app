import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport/app/features/auth/domain/enitites/chat_entity.dart';
import 'package:x_sport/app/painters/chat_bubble_painter.dart';

class ChatBubble extends StatelessWidget {
  final ChatEnity text;

  const ChatBubble(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        mainAxisAlignment: text.isUserMessage
            ? MainAxisAlignment.end
            : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          LayoutBuilder(
            builder: (context, constraints) {
              // Use TextPainter to calculate the height required for the text
              final textPainter = TextPainter(
                text: TextSpan(
                    text: text.message, style: TextStyle(fontSize: 20)),
                textDirection: TextDirection.ltr,
              )..layout(maxWidth: 100.w - 50.w); // Adjust maxWidth for padding

              // Set a fixed width and dynamic height for the custom painter
              return SizedBox(
                width: 180.w, // Fixed width
                // height: textPainter.height, // Dynamic height based on text
                child: CustomPaint(
                  painter: ChatBubblePainter(
                    width: 180.w, // Fixed width
                    color: text.isUserMessage ? Colors.blue : Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 4.w, right: 14.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 20.w),
                          child: Text(
                            text.message,
                            style: TextStyle(
                                color: text.isUserMessage
                                    ? Colors.white
                                    : Colors.black),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 2.w),
                          child: Text(
                            '3:40',
                            style: TextStyle(
                                fontSize: 10,
                                color: text.isUserMessage
                                    ? Colors.white
                                    : Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
