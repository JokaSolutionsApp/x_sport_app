import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/constance/app_constance.dart';
import '../../../../../../core/utils/assets_managers/assets.gen.dart';
import '../../../../../widgets/buttons/submit_button.dart';
import '../../../../courts/presentation/bloc/stadium_bloc.dart';
import '../../../../courts/presentation/pages/courts_page.dart';

class FriendsStadiumsComponent extends StatelessWidget {
  final ValueNotifier<int> selectedIdx = ValueNotifier<int>(0);

  FriendsStadiumsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StadiumBloc, StadiumState>(
      builder: (context, state) {
        return state.maybeMap(
          orElse: () => const Offstage(),
          getFriendsStadiumsLoading: (value) => const Offstage(),
          getFriendsStadiumsFailure: (value) => const Offstage(),
          friendsStadiumsFetched: (value) => Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  'ملاعب يرتادها اصدقائك',
                  style: TextStyle(
                    color: XColors.black,
                    fontSize: 16.sp,
                    fontFamily: 'Tajawal',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ),
              SizedBox(
                height: 210.h,
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 2.w),
                  reverse: true,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemExtent: 170.w,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 4.w, vertical: 8.w),
                      child: GestureDetector(
                        onTap: () {
                          selectedIdx.value = index;
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const CourtsPage()));
                        },
                        child: Container(
                          height: 32.h,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 4,
                                    offset: Offset(0, 2.w))
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12.sp)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: 83.w,
                                width: 137.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.sp),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetsManager.images.home.stadium
                                          .image()
                                          .image,
                                    )),
                              ),
                              Container(
                                padding: EdgeInsets.only(right: 10.w),
                                alignment: Alignment.center,
                                child: Text(
                                  'اسم الملعب',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.sp,
                                  ),
                                ),
                              ),
                              Text(
                                'وصف',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.sp,
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: SubmitButton(
                                    textColor: Colors.white,
                                    fillColor: XColors.primary,
                                    radius: 4,
                                    minWidth: 88,
                                    height: 18,
                                    textSize: 14,
                                    text: 'تابع',
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
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
