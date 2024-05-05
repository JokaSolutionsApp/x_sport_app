import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport/app/features/courts/domain/enitites/params/stadium_params.dart';
import 'package:x_sport/app/features/courts/presentation/bloc/stadium_bloc.dart';
import 'package:x_sport/app/features/courts/presentation/pages/courts_page.dart';
import 'package:x_sport/app/features/home/presentation/components/home_components/banner_component.dart';
import 'package:x_sport/app/features/home/presentation/components/home_components/friends_stadiums_component.dart';
import '../../../../../core/constance/app_constance.dart';
import '../../../../../core/utils/assets_managers/assets.gen.dart';
import '../../../../widgets/buttons/submit_button.dart';
import '../../../../widgets/rectangle_container.dart';
import '../../../courts/presentation/pages/courts_page.dart';
import '../../../profile/presentation/components/profile_screen_components/profile_main_components/profile_appbar_component.dart';
import '../components/home_components/banner_component.dart';
import '../components/home_components/friends_stadiums_component.dart';
import '../components/home_components/home_stadiums_component.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  initState() {
    super.initState();
    context.read<StadiumBloc>().add(StadiumEvent.getFriendsStadiums(
        params: StadiumPrams(pageNum: 1, pageSize: 1, sportId: 1)));
    context.read<StadiumBloc>().add(
          StadiumEvent.getNearByStadiums(
              params: StadiumPrams(pageNum: 1, pageSize: 1, sportId: 1)),
        );
  }

  @override
  Widget build(BuildContext context) {
    final List<HomeOptions> items = [
      HomeOptions(
        title: 'ابحث عن اكاديميات بقربك لتحول هوايتك الى احتراف',
        image: AssetsManager.images.home.search,
        color: Colors.white,
        textColor: const Color(0xFF595959),
        btnColor: XColors.primary,
        btnTextColor: Colors.white,
      ),
      HomeOptions(
          title: 'اضافة اصدقاء في منطقتك لتتنافسوا سويا',
          image: AssetsManager.images.home.friends,
          color: XColors.primary,
          textColor: Colors.white,
          btnColor: Colors.white,
          btnTextColor: XColors.primary,
          fadedImage: AssetsManager.images.home.faded1),
      HomeOptions(
          fadedTop: 10,
          title: 'استعرض الملاعب بالقرب منك ونظم حجزك القادم',
          image: AssetsManager.images.home.stadiums,
          color: XColors.primary,
          textColor: Colors.white,
          btnColor: Colors.white,
          btnTextColor: XColors.primary,
          fadedImage: AssetsManager.images.home.faded2),
      HomeOptions(
        title: 'انشر اعلان مباراتك لتبحث عن خصم لك!',
        image: AssetsManager.images.home.post,
        color: Colors.white,
        textColor: const Color(0xFF595959),
        btnColor: XColors.primary,
        btnTextColor: Colors.white,
      ),
    ];
    return Scaffold(
      backgroundColor: const Color(0xFFF6F7F9),
      appBar: const ProfileAppBarComponent(
        isProfile: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const HomeBannerComponent(),
            Container(
              height: 434.h,
              margin: EdgeInsets.only(top: 12.h),
              alignment: Alignment.center,
              padding: EdgeInsets.all(12.w),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.sp),
                ),
              ),
              child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 186.w,
                    crossAxisCount: 2,
                    crossAxisSpacing: 12.0.w,
                    mainAxisSpacing: 10.0.w,
                  ),
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return RectangleContainer(
                      containerColor: items[index].color,
                      child: Stack(alignment: Alignment.topRight, children: [
                        items[index].fadedImage != null
                            ? Positioned(
                                top: items[index].fadedTop,
                                left: 9.w,
                                height: 50.w,
                                width: 50.w,
                                child: items[index].fadedImage!.image(),
                              )
                            : const SizedBox.shrink(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              items[index].image.image(),
                              Text(
                                items[index].title,
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w500,
                                  color: items[index].textColor,
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: SubmitButton(
                                    textColor: items[index].btnTextColor,
                                    fillColor: items[index].btnColor,
                                    radius: 4,
                                    minWidth: 75,
                                    height: 18,
                                    textSize: 14,
                                    text: 'المزيد',
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const CourtsPage()));
                                    }),
                              )
                            ],
                          ),
                        )
                      ]),
                    );
                  }),
            ),
            //    HomeStadiumsComponent(),
            FriendsStadiumsComponent(),
          ],
        ),
      ),
    );
  }
}

class HomeOptions {
  final String title;
  final AssetGenImage image;
  final Color color;
  final Color textColor;
  final Color btnTextColor;
  final Color btnColor;
  final AssetGenImage? fadedImage;
  final double fadedTop;

  HomeOptions(
      {required this.title,
      required this.image,
      required this.color,
      required this.textColor,
      required this.btnTextColor,
      required this.btnColor,
      this.fadedTop = 0,
      this.fadedImage});
}
