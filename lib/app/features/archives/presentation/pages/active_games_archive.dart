import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:x_sport/core/widgets/global_app_bar.dart';
import 'package:x_sport/app/features/archives/presentation/components/played_games_components/played_games_details_component.dart';

class ActiveGamesArchiveScreen extends StatelessWidget {
  const ActiveGamesArchiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F7F9),
      appBar: GlobalAppBar(
        hasSearch: false,
        title: 'ارشيف المباريات النشطة',
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 30.w),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          Text(
            'يمكنك مراجعة المباريات التي قمت بحجزها',
            style: TextStyle(
                fontSize: 13.sp,
                fontWeight: FontWeight.w500,
                color: Color(0xFF616161)),
          ),
          SizedBox(height: 30.w),
          PlayedGamesArchiveComponent(
            state: 'لم تلعب بعد',
            title: ':مباراة تنافسية',
          ),
        ]),
      ),
    );
  }
}
