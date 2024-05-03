import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/constance/app_constance.dart';
import '../../../../../../../core/utils/assets_managers/assets.gen.dart';
import '../../../../../../painters/dotted_line_pianter.dart';
import '../../../../../../widgets/buttons/submit_button.dart';
import '../../../../../../widgets/rectangle_container.dart';
import '../../../../../auth/domain/enitites/favorite_sport_entity.dart';
import '../../../../../auth/domain/enitites/sport_entity.dart';
import '../../../../../auth/domain/enitites/user_profile_entity.dart';
import '../../../../../auth/presentation/bloc/auth_bloc.dart';
import '../../../pages/profile_ranking_page.dart';
import '../add_favorite_sport.dart';
import '../delete_favorite_sports.dart';
import 'activity_prefrences_component.dart';

class ProfileActivitiesComponent extends StatefulWidget {
  final List<FavoriteSportEntity> favoritSports;
  final UserProfileEntity userProfile;
  ProfileActivitiesComponent(
      {super.key, required this.favoritSports, required this.userProfile});

  @override
  State<ProfileActivitiesComponent> createState() =>
      _ProfileActivitiesComponentState();
}

class _ProfileActivitiesComponentState
    extends State<ProfileActivitiesComponent> {
  final ValueNotifier<int> selectedIndex = ValueNotifier<int>(0);
  List<int> selectedIds = [];
  late ValueNotifier<List<SportEntity>> sportsIds;
  @override
  void didChangeDependencies() {
    final List<SportEntity> sportsFavorites = widget.favoritSports
        .map((e) => SportEntity(sportId: e.id, name: e.name ?? ''))
        .toList();
    sportsIds = ValueNotifier(sportsFavorites);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final List<SportEntity> allSports = context.read<AuthBloc>().sports;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ValueListenableBuilder(
          valueListenable: sportsIds,
          builder: (context, value, child) => GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (BuildContext ctx) {
                    return DeleteFavoriteSports(
                      favoriteSports: widget.favoritSports,
                      title: 'ازالة لعبة',
                      subtitle:
                          'تنويه: بازالتك لاحد الالعاب سيختفي المحتوى المرتبط بتلك اللعبة خلال تصفحك التطبيق',
                      submitColor: const Color(0xFFF44336),
                      textColor: const Color(0xFFF44336),
                      allSports: allSports,
                      deleteSports: (List<int> ids) {
                        value.removeWhere((e) => ids.contains(e.sportId));
                      },
                    );
                  });
            },
            child: Container(
              width: 80.w,
              height: 34.w,
              decoration: BoxDecoration(
                color: const Color(0xFFFFD6D3),
                borderRadius: BorderRadius.circular(10.sp),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'ازالة لعبة',
                    style: TextStyle(
                      color: const Color(0xFFFF3030),
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Icon(
                    Icons.delete_forever_outlined,
                    color: const Color(0xFFFF3030),
                    size: 18.sp,
                  )
                ],
              ),
            ),
          ),
        ),
        Directionality(
          textDirection: TextDirection.rtl,
          child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 80.w,
                mainAxisExtent: 40.h,
                mainAxisSpacing: 20.0.w,
                crossAxisSpacing: 4.w),
            itemCount: widget.favoritSports.length + 1,
            itemBuilder: (context, index) {
              if (index < widget.favoritSports.length) {
                return ValueListenableBuilder(
                    valueListenable: selectedIndex,
                    builder: (context, isSelected, child) {
                      final isSelected = selectedIndex.value == index;
                      final Color selectedText =
                          isSelected ? Colors.white : XColors.primary;
                      final Color selectedButton = isSelected
                          ? XColors.primary
                          : const Color(0xFFECECFB);
                      return GestureDetector(
                        onTap: () {
                          selectedIndex.value = index;
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: selectedButton,
                            borderRadius: BorderRadius.circular(12.sp),
                            border: Border.all(
                              color: Colors.white,
                              width: 1.0,
                            ),
                          ),
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              widget.favoritSports[index].name ?? '',
                              style: TextStyle(
                                color: selectedText,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      );
                    });
              } else {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2),
                  child: ValueListenableBuilder(
                    valueListenable: sportsIds,
                    builder: (context, value, child) => GestureDetector(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AddFavoriteSports(
                                favoriteSports: value,
                                title: 'اضف لعبة جديدة',
                                subtitle:
                                    'تنويه: باضافتك للعبة جديدة سيظهر لك محتوى جديد خلال تصفحك مرتبط بتلك اللعبة',
                                allSports: allSports,
                                getSportsIds: (List<SportEntity> ids) {
                                  sportsIds.value = ids;
                                  selectedIds =
                                      ids.map((e) => e.sportId).toList();
                                },
                              );
                            });
                      },
                      child: DottedBorder(
                        borderPadding: EdgeInsets.symmetric(vertical: 4.w),
                        borderType: BorderType.RRect,
                        color: const Color(0xFF8E8E8E),
                        radius: Radius.circular(12.sp),
                        strokeWidth: 1.6.w,
                        dashPattern: [7.w],
                        child: Container(
                          alignment: Alignment.center,
                          child: const Icon(
                            Icons.add,
                            color: Color(0xFF8E8E8E),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }
            },
          ),
        ),
        SizedBox(height: 10.h),
        ValueListenableBuilder(
            valueListenable: selectedIndex,
            builder: (context, value, child) {
              return Column(
                children: [
                  RectangleContainer(
                      bottomMargin: 20,
                      radius: 20,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AssetsManager.images.main.tennis.image(
                              height: 202.h, width: 160.w, fit: BoxFit.fill),
                          Container(
                            height: 202.h,
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.w, vertical: 10.h),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  widget
                                          .userProfile
                                          .favoriteSports![selectedIndex.value]
                                          .name ??
                                      '',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w400),
                                ),
                                RichText(
                                    text: TextSpan(
                                        text: widget
                                            .userProfile
                                            .favoriteSports![
                                                selectedIndex.value]
                                            .userLevel![selectedIndex.value],
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 21.sp,
                                            fontWeight: FontWeight.w500),
                                        children: [
                                      TextSpan(
                                        text: ' :المستوى',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 21.sp,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ])),
                                RichText(
                                    text: TextSpan(
                                        text: 'عدد المباريات: ',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w400),
                                        children: [
                                      TextSpan(
                                        text: widget
                                            .userProfile
                                            .favoriteSports![
                                                selectedIndex.value]
                                            .numOfMatches
                                            .toString(),
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w400),
                                      )
                                    ])),
                                Text(
                                  widget
                                          .userProfile
                                          .favoriteSports![selectedIndex.value]
                                          .name ??
                                      '',
                                  style: TextStyle(
                                      color: XColors.primary,
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(height: 10.h),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 124.w,
                                      height: 26.w,
                                      child: Stack(
                                        children: [
                                          Align(
                                            alignment: Alignment.center,
                                            child: SizedBox(
                                              width: 92.w,
                                              child: Directionality(
                                                textDirection:
                                                    TextDirection.rtl,
                                                child: LinearProgressIndicator(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0.sp),
                                                  valueColor:
                                                      const AlwaysStoppedAnimation<
                                                          Color>(
                                                    XColors.primary,
                                                  ),
                                                  value: 0.2,
                                                  minHeight: 10.h,
                                                  color: XColors.primary,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                                alignment: Alignment.center,
                                                width: 25.w,
                                                height: 25.w,
                                                decoration: const BoxDecoration(
                                                    color: Color(0xFFECEBEB),
                                                    shape: BoxShape.circle),
                                                child: const Icon(
                                                  Icons
                                                      .keyboard_double_arrow_up_outlined,
                                                  color: XColors.primary,
                                                )),
                                          ),
                                          Align(
                                            alignment: Alignment.centerRight,
                                            child: Container(
                                              alignment: Alignment.center,
                                              width: 25.w,
                                              height: 25.w,
                                              decoration: const BoxDecoration(
                                                  color: XColors.primary,
                                                  shape: BoxShape.circle),
                                              child: Text(
                                                '2',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15.sp,
                                                  fontFamily: 'Tajawal',
                                                  fontWeight: FontWeight.w400,
                                                  height: 2.1.w,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 10.w),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          widget.userProfile.user!.loyaltyPoints
                                              .toString(),
                                          style: const TextStyle(
                                            color: XColors.primary,
                                            fontSize: 20,
                                            fontFamily: 'Tajawal',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                          ),
                                        ),
                                        SizedBox(width: 10.h),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const ProfileRankingPage()));
                                          },
                                          child: Container(
                                            width: 34.w,
                                            height: 34.w,
                                            decoration: ShapeDecoration(
                                              shape: RoundedRectangleBorder(
                                                side: const BorderSide(
                                                    width: 0.50,
                                                    color: XColors.primary),
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                            ),
                                            child: Icon(
                                              Icons.emoji_events,
                                              size: 30.sp,
                                              color: XColors.primary,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SubmitButton(
                        minWidth: 150,
                        height: 46,
                        radius: 22,
                        text: 'ابدأ مباراة جديدة',
                        textSize: 18.sp,
                        fillColor: XColors.primary,
                        onPressed: () {},
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'ابحث عن تحدي جديد',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 22.sp,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'احجز مباراة جديدة او ابحث عن خصم جديد!',
                            style: TextStyle(
                                color: const Color(0xFF2E2E2E),
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20.w),
                  RectangleContainer(
                      bottomMargin: 20,
                      borderWidth: 1,
                      borderColor: 0xFFD9D9D9,
                      radius: 20,
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.w),
                        child: ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: widget
                                .userProfile
                                .favoriteSports![selectedIndex.value]
                                .levels
                                .length,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  SizedBox(
                                    height: 40.h,
                                    child: CustomPaint(
                                      size: Size(1.sw, 1.w),
                                      painter: DottedLinePainter(),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20.w),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          widget
                                              .userProfile
                                              .favoriteSports![
                                                  selectedIndex.value]
                                              .levels[index]
                                              .levelMaxPoints
                                              .toString(),
                                          style: TextStyle(
                                              fontSize: 16.sp,
                                              color: const Color(0xFF2C2C2C)),
                                        ),
                                        Text(
                                          widget
                                              .userProfile
                                              .favoriteSports![
                                                  selectedIndex.value]
                                              .levels[index]
                                              .levelName
                                              .toString(),
                                          style: TextStyle(
                                              fontSize: 15.sp,
                                              color: const Color(0xFF1B1B1B)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              );
                            }),
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 18.w,
                        width: 18.w,
                        decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              color: Color(0xFF40CF91),
                            )
                          ],
                          color: Color(0xFF40CF91),
                          shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(width: 20.w),
                      Text(
                        'تفضيلات اللاعب',
                        style: TextStyle(
                            fontSize: 22.sp, color: const Color(0xFF1B1B1B)),
                      )
                    ],
                  ),
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    key: UniqueKey(),
                    itemCount: widget
                        .userProfile
                        .favoriteSports![selectedIndex.value]
                        .preferences
                        .length,
                    itemBuilder: (context, index) {
                      return ActivityPreferncesComponent(
                        initialValueId: widget
                            .userProfile
                            .favoriteSports![selectedIndex.value]
                            .preferences[index]
                            .selectedPreferenceValueId,
                        preferenceValues: widget
                            .userProfile
                            .favoriteSports![selectedIndex.value]
                            .preferences[index],
                      );
                    },
                  ),
                ],
              );
            }),
      ],
    );
  }
}
