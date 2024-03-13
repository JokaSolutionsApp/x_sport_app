import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constance/app_constance.dart';

class GlobalAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool hasSearch;
  const GlobalAppBar({super.key, this.title = '', this.hasSearch = true});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: XColors.Submit_Button_Color,
      centerTitle: true,
      title: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
      leading: hasSearch
          ? GestureDetector(
              child: Icon(
                Icons.search,
                color: Colors.white,
                size: 34.sp,
              ),
            )
          : const SizedBox.shrink(),
      actions: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.arrow_forward,
            color: Colors.white,
            size: 32.sp,
          ),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(1.sw, kToolbarHeight);
}
