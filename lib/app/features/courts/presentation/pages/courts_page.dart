import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:x_sport/app/features/courts/domain/enitites/stadiums_entity.dart';
import 'package:x_sport/main.dart';
import '../bloc/stadium_bloc.dart';
import '../../../academy/presentation/components/video_player_full_screen_widget.dart';
import '../../../../../core/constance/app_constance.dart';

import '../components/court_information_tab_component.dart';

class CourtsPage extends StatefulWidget {
  const CourtsPage({super.key, this.stadium});
  final StadiumEntity? stadium;

  @override
  State<CourtsPage> createState() => _CourtsScreenState();
}

class _CourtsScreenState extends State<CourtsPage>
    with SingleTickerProviderStateMixin {
  int activeIndex = 0;

  var carouselImages = [
    'c',
    'https://picsum.photos/1920/1080',
    'https://picsum.photos/1920/1080',
  ];

  @override
  void initState() {
    BlocProvider.of<StadiumBloc>(context).add(StadiumEvent.getAboutStadium(
        StadiumId: widget.stadium?.stadiumId ?? 1));

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
                        widget.stadium?.stadiumName ?? '',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
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
        body: BlocBuilder<StadiumBloc, StadiumState>(
            buildWhen: (previous, current) {
          if (current.runtimeType ==
              const StadiumState.getAboutStadiumLoading().runtimeType) {
            return true;
          }
          if (current.runtimeType ==
              const StadiumState.aboutStadiumFetched().runtimeType) {
            return true;
          }
          return false;
        }, builder: (context, state) {
          return state.maybeMap(
              orElse: () => const Offstage(),
              getAboutStadiumFailure: (v) => const Offstage(),
              getAboutStadiumLoading: (v) => const Center(
                    child: CircularProgressIndicator(
                      color: XColors.primary,
                    ),
                  ),
              aboutStadiumFetched: (value) {
                return SingleChildScrollView(
                  child: Center(
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
                                  final carouselImage =
                                      value.aboutStadium?.coverPhoto ??
                                          "https://picsum.photos/1920/1080";
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
                                        color:
                                            XColors.primary.withOpacity(0.52),
                                        shape: BoxShape.circle),
                                    child: IconButton(
                                      onPressed: () {
                                        Navigator.of(
                                                navigatorKey.currentContext!)
                                            .push(
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                VideoPlayerFullScreenWidget(
                                              videos: widget.stadium?.videos ??
                                                  <String>[],
                                            ),
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
                                margin: EdgeInsets.only(top: 20.w),
                                height: 50.h,
                                width: 0.9.sw,
                                decoration: BoxDecoration(
                                  color: XColors.primary,
                                  borderRadius: BorderRadius.circular(12.sp),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      blurRadius: 8,
                                      offset: const Offset(0, 4),
                                    )
                                  ],
                                ),
                                child: const Text(
                                  'معلومات',
                                  style: TextStyle(
                                    color: XColors.white,
                                  ),
                                ),
                              ),
                              const CourtInformationComponent(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              });
        }));
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
