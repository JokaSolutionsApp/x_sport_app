import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport/app/features/courts/presentation/components/court_app_bar.dart';
import 'package:x_sport/app/features/courts/presentation/components/court_header.dart';
import 'package:x_sport/app/features/courts/presentation/components/court_info_tab.dart';
import 'package:x_sport/core/constance/app_constance.dart';
import 'package:x_sport/core/utils/assets_managers/assets.gen.dart';

class CourtPage extends StatelessWidget {
  const CourtPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: XColors.scaffold_background,
      body: Stack(
        children: [
          AssetsManager.images.courts.courtSample.image(),
          CustomScrollView(
            slivers: [
              const CourtAppBar(),
              SliverToBoxAdapter(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: courtBody(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Column courtBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CourtHeader(),
        DefaultTabController(
          length: 3,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.w),
                child: TabBar(
                  labelColor: XColors.primary_text_color,
                  unselectedLabelColor: XColors.secondary_text_color,
                  indicatorColor: XColors.primary,
                  labelStyle: TextStyle(
                    fontSize: 14.sp,
                  ),
                  tabs: const [
                    Tab(text: 'معلومات'),
                    Tab(text: 'احجز'),
                    Tab(text: 'نشاطات'),
                  ],
                ),
              ),
              SizedBox(
                height: 0.75.sh,
                child: const TabBarView(
                  children: [
                    CourtInfoTab(),
                    Center(child: Text('Reservation content here')),
                    Center(child: Text('Activities content here')),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
