import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:x_sport/app/features/academy/presentation/components/reviews_tab.dart';
import '../components/courses_tab.dart';
import '../../domain/enitites/suggested_academy_entity.dart';
import '../components/video_player_full_screen_widget.dart';

import '../../../../../core/constance/app_constance.dart';
import '../../../../widgets/buttons/submit_button.dart';

import '../components/academy_components/academy_tabs_components/academy_about_component.dart';

class AcademyPage extends StatefulWidget {
  final SuggestedAcademyEntity academy;
  const AcademyPage({super.key, required this.academy});

  @override
  State<AcademyPage> createState() => _AcademyScreenState();
}

class _AcademyScreenState extends State<AcademyPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int activeIndex = 0;

  var carouselImages = [
    'https://picsum.photos/1920/1080',
    'https://picsum.photos/1920/1080',
    'https://picsum.photos/1920/1080',
  ];

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this, initialIndex: 2);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 0.06.sh,
        backgroundColor: Colors.black,
        flexibleSpace: Container(
          alignment: Alignment.bottomCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Row(
                  children: [
                    const Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                    ),
                    Text(
                      widget.academy.name,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.ios_share_rounded,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.person_add,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 0.23.sh,
              width: double.infinity,
              child: Stack(
                children: [
                  CarouselSlider.builder(
                    itemCount: carouselImages.length,
                    itemBuilder: (context, index, realIndex) {
                      final carouselImage = carouselImages[index];
                      return buildImage(carouselImage, index);
                    },
                    options: CarouselOptions(
                      height: 0.23.sh,
                      autoPlay: true,
                      viewportFraction: 1,
                      onPageChanged: (index, reason) => setState(
                        () => activeIndex = index,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: buildIndicator(),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        right: 4.0,
                        bottom: 6.0,
                      ),
                      child: Container(
                        height: 50.h,
                        width: 50.w,
                        decoration: BoxDecoration(
                            color: XColors.primary.withOpacity(0.52),
                            shape: BoxShape.circle),
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const VideoPlayerFullScreenWidget(),
                              ),
                            );
                          },
                          icon: Icon(
                            Icons.play_arrow,
                            color: Colors.white.withOpacity(0.52),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 5.w),
                    height: 70.h,
                    width: 0.9.sw,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color(0xFFE6E6E6), width: 0.5.w),
                        borderRadius: BorderRadius.circular(22.sp)),
                    child: TabBar(
                      labelPadding: const EdgeInsets.symmetric(horizontal: 6),
                      splashBorderRadius: BorderRadius.circular(11.sp),
                      unselectedLabelColor: const Color(0xFFB4B4B4),
                      indicatorSize: TabBarIndicatorSize.label,
                      splashFactory: NoSplash.splashFactory,
                      overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                          return states.contains(MaterialState.focused)
                              ? null
                              : Colors.transparent;
                        },
                      ),
                      labelStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700),
                      unselectedLabelStyle: TextStyle(
                          color: const Color(0xFFB4B4B4),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700),
                      dividerColor: Colors.transparent,
                      indicator: BoxDecoration(
                          color: XColors.primary,
                          borderRadius: BorderRadius.circular(11.sp)),
                      controller: _tabController,
                      tabs: [
                        Container(
                          height: 30.w,
                          alignment: Alignment.center,
                          child: Text(
                            "مراجعات",
                            style: TextStyle(
                                fontSize: 12.sp, fontWeight: FontWeight.w700),
                          ),
                        ),
                        Container(
                          height: 30.w,
                          alignment: Alignment.center,
                          child: Text(
                            "برامج التدريب",
                            style: TextStyle(
                                fontSize: 12.sp, fontWeight: FontWeight.w700),
                          ),
                        ),
                        Container(
                          height: 30.w,
                          alignment: Alignment.center,
                          child: Text(
                            "حول",
                            style: TextStyle(
                                fontSize: 12.sp, fontWeight: FontWeight.w700),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 0.49.sh,
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        const ReviewsTab(),
                        const CoursesTab(),
                        AcademyAboutComponent(
                          academyId: widget.academy.academyId,
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: SubmitButton(
                      minWidth: 190.w,
                      text: 'سجل الان',
                      height: 54.w,
                      textSize: 15,
                      fillColor: XColors.primary,
                      radius: 6,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: carouselImages.length,
        effect: const ExpandingDotsEffect(
          dotWidth: 7,
          dotHeight: 7,
          activeDotColor: Colors.white,
          dotColor: Colors.grey,
        ),
      );
}

Widget buildImage(String carouselImage, int index) => Container(
      width: double.infinity,
      color: Colors.grey[300],
      child: CachedNetworkImage(
        imageUrl: carouselImage,
        placeholder: (context, url) => const Icon(Icons.image),
        errorWidget: (context, url, error) => const Icon(Icons.image),
        fit: BoxFit.fill,
      ),
    );
