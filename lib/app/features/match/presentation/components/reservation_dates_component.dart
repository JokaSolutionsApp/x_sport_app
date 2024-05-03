import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:x_sport/app/features/match/domain/enitites/reservation_entity.dart';
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
    dayMaps = [
      {
        'dayName': 'السبت',
        'day': '${now.day}',
        'MonthName': now,
      },
      {
        'dayName': 'الاحد',
        'day': '${now.add(const Duration(days: 1)).day}',
        'MonthName': now.add(const Duration(days: 1)),
      },
      {
        'dayName': 'الاثنين',
        'day': '${now.add(const Duration(days: 2)).day}',
        'MonthName': now.add(const Duration(days: 2)),
      },
      {
        'dayName': 'الثلاثاء',
        'day': '${now.add(const Duration(days: 3)).day}',
        'MonthName': now.add(const Duration(days: 3)),
      },
      {
        'dayName': 'الاربعاء',
        'day': '${now.add(const Duration(days: 4)).day}',
        'MonthName': now.add(const Duration(days: 4)),
      },
      {
        'dayName': 'الخميس',
        'day': '${now.add(const Duration(days: 5)).day}',
        'MonthName': now.add(const Duration(days: 5)),
      },
      {
        'dayName': 'الجمعة',
        'day': '${now.add(const Duration(days: 6)).day}',
        'MonthName': now.add(const Duration(days: 6)),
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
    return SizedBox(
      height: 100.h,
      width: 1.sw,
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
                  },
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: isSelected ? XColors.primary : Colors.white,
                        border: Border.all(color: const Color(0xFFE5E5E5)),
                        borderRadius: BorderRadius.circular(28.sp)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${dayMaps[index]['dayName']}',
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: isSelected ? Colors.white : Colors.black,
                          ),
                        ),
                        Text(
                          '${dayMaps[index]['day']}',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: isSelected ? Colors.white : Colors.black,
                          ),
                        ),
                        Text(
                          getMonthName(dayMaps[index]['MonthName']),
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: isSelected ? Colors.white : Colors.black,
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
    );
  }
}
