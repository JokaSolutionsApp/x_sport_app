import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport/app/features/courts/presentation/components/championship_card.dart';
import 'package:x_sport/core/constance/app_constance.dart';
import '../../../../../core/widgets/global_app_bar.dart';

class ChampionshipPage extends StatefulWidget {
  const ChampionshipPage({super.key});

  @override
  State<ChampionshipPage> createState() => _ChampionshipPageState();
}

class _ChampionshipPageState extends State<ChampionshipPage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    _tabController = TabController(
      length: 3,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F7F9),
      appBar: const GlobalAppBar(
        hasSearch: false,
        title: 'البطولات',
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 20.w),
            height: 54.h,
            width: 0.9.sw,
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0xFFD1D1D1),
                width: 0.5,
              ),
              color: Colors.white,
              borderRadius: BorderRadius.circular(32.sp),
            ),
            child: TabBar(
              dividerColor: Colors.transparent,
              controller: _tabController,
              labelPadding: EdgeInsets.symmetric(
                horizontal: 10.w,
              ),
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(32.sp),
                  color: XColors.primary),
              labelStyle: TextStyle(
                color: Colors.white,
                fontSize: 18.sp,
                fontWeight: FontWeight.w400,
              ),
              unselectedLabelStyle: const TextStyle(
                color: Color(0xFF8F8F8F),
              ),
              tabs: [
                Container(
                  height: 30.w,
                  alignment: Alignment.center,
                  child: Text(
                    'مستمرة',
                    style:
                        TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400),
                  ),
                ),
                Container(
                  height: 30.w,
                  alignment: Alignment.center,
                  child: Text(
                    'قادمة',
                    style:
                        TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w400),
                  ),
                ),
                Container(
                  height: 30.w,
                  alignment: Alignment.center,
                  child: Text(
                    'منتهية',
                    style:
                        TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                ListView.builder(
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return const ChampionshipCard();
                  },
                ),
                ListView.builder(
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return const ChampionshipCard();
                  },
                ),
                ListView.builder(
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return const ChampionshipCard();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
