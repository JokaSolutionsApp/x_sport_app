import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MyFirendsComponent extends StatelessWidget {
  final String leadingTitle;
  final String trailingTitle;
  final VoidCallback onTap;
  final int flex;
  final EdgeInsets padding;
  final List<ValueNotifier<bool>> isInvitedList; // List of ValueNotifiers

  MyFirendsComponent({
    super.key,
    required this.leadingTitle,
    required this.trailingTitle,
    required this.onTap,
    this.flex = 1,
    this.padding = EdgeInsets.zero,
  }) : isInvitedList = List.generate(
            15, (_) => ValueNotifier(false)); // Initialize for each item

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return SizedBox(height: 20.w);
        },
        padding: padding,
        itemCount: 15,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  if (leadingTitle == 'اضافة') {
                    isInvitedList[index].value =
                        !isInvitedList[index].value; // Update specific item
                  }
                },
                child: ValueListenableBuilder(
                  valueListenable: isInvitedList[index],
                  builder: (context, value, child) {
                    return value
                        ? GestureDetector(
                            child: Icon(
                            Icons.done,
                            color: Color(0xFF2492F8),
                            size: 28,
                          ))
                        : Text(
                            leadingTitle,
                            style: GoogleFonts.tajawal(
                              color: Color(0xFF2492F8),
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Text(
                        trailingTitle,
                        style: GoogleFonts.tajawal(
                          color: Colors.black,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(width: 12.w),
                      Container(
                        height: 43.w,
                        width: 43.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('assets/images/avatar0.png')),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
