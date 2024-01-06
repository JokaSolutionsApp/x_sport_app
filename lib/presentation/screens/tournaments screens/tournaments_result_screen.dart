import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_sport/core/constance/app_constance.dart';
import 'package:x_sport/presentation/components/payment_info_components/payment_history_component.dart';
import 'package:x_sport/presentation/widgets/buttons/submit_button.dart';
import 'package:x_sport/presentation/widgets/rectangle_container.dart';

import '../../components/tournaments_result_components/tournament_result_rank_component.dart';
import '../../components/tournaments_result_components/tournaments_result_matches_component.dart';
import '../../controllers/fileds_bloc.dart';
import '../../widgets/buttons/custom_radio_button.dart';
import '../../widgets/text_fields/add_payment_field.dart';
import '../../widgets/text_fields/credit_text_field.dart';

class TournamentsResultScreen extends StatelessWidget {
  TournamentsResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color(0xFFF4F4F4),
        appBar: AppBar(
          title: Text(
            'نتائج (اسم البطولة)',
            style: GoogleFonts.tajawal(
                color: Colors.black,
                fontSize: 18.sp,
                fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
          leading: GestureDetector(
            child: Icon(
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
                    bottom: BorderSide(
                        color: XColors.Submit_Button_Color, width: 4.sp))),
            labelStyle: GoogleFonts.tajawal(
                color: Colors.black,
                fontSize: 15.sp,
                fontWeight: FontWeight.w500),
            unselectedLabelStyle: TextStyle(
              color: Color(0xFF8F8F8F),
            ),
            tabs: [
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
