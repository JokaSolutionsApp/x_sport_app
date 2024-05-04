import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:x_sport/app/features/match/domain/enitites/reservation_entity.dart';
import 'package:x_sport/app/features/match/presentation/bloc/match_reservation_bloc.dart';
import 'package:x_sport/app/widgets/rectangle_container.dart';
import 'package:x_sport/core/constance/app_constance.dart';

class ReservationDatesComponent extends StatefulWidget {
  final List<ReservationEntity> times;
  const ReservationDatesComponent({
    super.key,
    required this.times,
  });

  @override
  State<ReservationDatesComponent> createState() =>
      _ReservationDatesComponentState();
}

class _ReservationDatesComponentState extends State<ReservationDatesComponent> {
  DateTime now = DateTime.now();
  List<Map<String, dynamic>> dayMaps = [];

  final ValueNotifier<int?> isSelectedIndex = ValueNotifier<int?>(0);
  @override
  void initState() {
    context.read<MatchReservationBloc>().reservationDate =
        DateFormat('dd-MM-yyyy').format(now);
    dayMaps = [
      {
        'dayName': 'السبت',
        'day': '${now.day}',
        'MonthName': now,
        'dayOrder': 6,
      },
      {
        'dayName': 'الاحد',
        'day': '${now.add(const Duration(days: 1)).day}',
        'MonthName': now.add(const Duration(days: 1)),
        'dayOrder': 0,
      },
      {
        'dayName': 'الاثنين',
        'day': '${now.add(const Duration(days: 2)).day}',
        'MonthName': now.add(const Duration(days: 2)),
        'dayOrder': 1,
      },
      {
        'dayName': 'الثلاثاء',
        'day': '${now.add(const Duration(days: 3)).day}',
        'MonthName': now.add(const Duration(days: 3)),
        'dayOrder': 2,
      },
      {
        'dayName': 'الاربعاء',
        'day': '${now.add(const Duration(days: 4)).day}',
        'MonthName': now.add(const Duration(days: 4)),
        'dayOrder': 3,
      },
      {
        'dayName': 'الخميس',
        'day': '${now.add(const Duration(days: 5)).day}',
        'MonthName': now.add(const Duration(days: 5)),
        'dayOrder': 4,
      },
      {
        'dayName': 'الجمعة',
        'day': '${now.add(const Duration(days: 6)).day}',
        'MonthName': now.add(const Duration(days: 6)),
        'dayOrder': 5,
      }
    ];
    super.initState();
  }

  String getMonthName(DateTime dateTime) {
    final formatter = DateFormat('MMMM');
    return formatter.format(dateTime);
  }

  @override
  Widget build(BuildContext context) {
    return RectangleContainer(
      bottomMargin: 10,
      radius: 14,
      child: Padding(
        padding:
            EdgeInsets.only(right: 12.sp, left: 12.w, top: 8.w, bottom: 28.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              ':حدد تاريخ وزمن المباراة',
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500),
            ),
            Text(
              'يمكنك تنظيم مباراة خلال مدة اقصاها 7 ايام',
              style: TextStyle(
                  color: const Color(0xFF909090),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 100.h,
              child: ListView.builder(
                shrinkWrap: true,
                reverse: true,
                scrollDirection: Axis.horizontal,
                itemExtent: 54.w,
                itemCount: 7,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2.w),
                    child: ValueListenableBuilder<int?>(
                      valueListenable: isSelectedIndex,
                      builder: (context, selectedIndex, child) {
                        final isSelected = index == selectedIndex;
                        return GestureDetector(
                          onTap: () {
                            isSelectedIndex.value = index;
                            context
                                    .read<MatchReservationBloc>()
                                    .reservationDate =
                                DateFormat('dd-MM-yyyy')
                                    .format(dayMaps[index]['MonthName']);
                            BlocProvider.of<MatchReservationBloc>(context).add(
                              MatchReservationEvent.changeTimes(
                                dayOrder: dayMaps[index]['dayOrder'],
                              ),
                            );
                          },
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color:
                                    isSelected ? XColors.primary : Colors.white,
                                border:
                                    Border.all(color: const Color(0xFFE5E5E5)),
                                borderRadius: BorderRadius.circular(28.sp)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '${dayMaps[index]['dayName']}',
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    color: isSelected
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                                Text(
                                  '${dayMaps[index]['day']}',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: isSelected
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                                Text(
                                  getMonthName(dayMaps[index]['MonthName']),
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: isSelected
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
