import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport/app/features/courts/presentation/components/share_link.dart';
import 'package:x_sport/app/features/courts/presentation/components/share_option.dart';

class ShareSheet extends StatelessWidget {
  const ShareSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 30.h,
        horizontal: 20.w,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  'شارك',
                  style: TextStyle(
                    fontSize: 14.sp,
                  ),
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.close,
                  size: 15.sp,
                ),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
          SizedBox(
            height: 30.h,
          ),
          ShareOption(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5.r),
              topRight: Radius.circular(5.r),
            ),
            icon: Icons.person_outline,
            text: 'ارسل الى زملائك',
            onTap: () {},
          ),
          ShareOption(
            icon: Icons.group_outlined,
            text: 'ارسل الى فريقك',
            onTap: () {},
          ),
          ShareOption(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(5.r),
              bottomRight: Radius.circular(5.r),
            ),
            icon: Icons.message_outlined,
            text: 'ارسل الى محادثاتك',
            onTap: () {},
            underline: false,
          ),
          SizedBox(height: 20.h),
          const ShareLinkWidget(),
        ],
      ),
    );
  }
}
