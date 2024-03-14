import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:x_sport/core/constance/app_constance.dart';
import 'package:x_sport/app/features/tournaments/presentation/components/tournament_result_rank_component.dart';
import 'package:x_sport/app/features/tournaments/presentation/components/tournaments_result_matches_component.dart';

class TournamentsResultPage extends StatelessWidget {
  const TournamentsResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xFFF4F4F4),
        appBar: AppBar(
          automaticallyImplyLeading: false,

          title: Text(
            'نتائج (اسم البطولة)',
            style: TextStyle(
                color: Colors.black,
                fontSize: 18.sp,
                fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
          leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(
              Icons.arrow_back_ios_new,
              size: 22.0,
            ),
          ),
          bottom: TabBar(
            splashFactory: NoSplash.splashFactory,
            overlayColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
                return states.contains(MaterialState.focused)
                    ? null
                    : Colors.transparent;
              },
            ),
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorPadding: EdgeInsets.symmetric(horizontal: 16.w),
            indicator: BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: XColors.primary, width: 4.sp))),
            labelStyle: TextStyle(
                color: Colors.black,
                fontSize: 15.sp,
                fontWeight: FontWeight.w500),
            unselectedLabelStyle: const TextStyle(
              color: Color(0xFF8F8F8F),
            ),
            tabs: const [
              Tab(
                text: 'الترتيب',
              ),
              Tab(text: 'المباريات'),
            ],
          ),
          backgroundColor:
              Colors.transparent, // Set the background color to transparent
          elevation: 0, // Set the elevation to 0 to remove default shadow
          flexibleSpace: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1), // Shadow color
                  blurRadius: 10, // Blur radius
                  offset: Offset(0, 4.w), // Offset in the x and y directions
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            TournamentResultRankComponent(),
            TournamentResultMatchesComponent(),
          ],
        ),
      ),
    );
  }
}
