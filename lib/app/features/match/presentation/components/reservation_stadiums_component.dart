import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport/app/features/match/domain/enitites/params/match_reservation_params.dart';

import '../../../../../core/constance/app_constance.dart';
import '../../../../../core/utils/assets_managers/assets.gen.dart';
import '../../domain/enitites/sport_stadium_entity.dart';
import '../bloc/match_reservation_bloc.dart';

class ReservationStadiumsComponent extends StatefulWidget {
  final List<SportStadiumEntity>? stadiums;

  const ReservationStadiumsComponent({
    super.key,
    this.stadiums,
  });

  @override
  State<ReservationStadiumsComponent> createState() =>
      _ReservationStadiumsComponentState();
}

class _ReservationStadiumsComponentState
    extends State<ReservationStadiumsComponent> {
  final ValueNotifier<int> selectedIndex = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.h,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 2.w),
        reverse: true,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemExtent: 170.w,
        itemCount: widget.stadiums?.length ?? 0,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 6.w),
            child: GestureDetector(
              onTap: () async {
                setState(() {
                  selectedIndex.value = index;
                });
                BlocProvider.of<MatchReservationBloc>(context).add(
                  MatchReservationEvent.changeTimes(
                    dayOrder: 6,
                    stadiumId: widget.stadiums![index].stadiumId,
                  ),
                );
                BlocProvider.of<MatchReservationBloc>(context).add(
                  MatchReservationEvent.getTimes(
                    params: ReserviedTimesParams(
                      stadiumFloorId: index,
                      stadiumId: widget.stadiums![index].stadiumId,
                    ),
                  ),
                );
              },
              child: Container(
                height: 32.h,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      offset: Offset(
                        0,
                        2.w,
                      ),
                    )
                  ],
                  color: selectedIndex.value == index
                      ? XColors.primary
                      : XColors.white,
                  borderRadius: BorderRadius.circular(
                    12.sp,
                  ),
                ),
                child: Column(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12.sp),
                            topRight: Radius.circular(12.sp),
                          ),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image:
                                AssetsManager.images.courts.court.image().image,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(right: 10.w),
                        alignment: Alignment.centerRight,
                        child: Text(
                          widget.stadiums?[index].stadiumName ?? '',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
