import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:x_sport/app/features/match/presentation/bloc/match_reservation_bloc.dart';
import 'package:x_sport/core/constance/app_constance.dart';

import '../../../../widgets/rectangle_container.dart';

class ReservationTimesComponent extends StatefulWidget {
  const ReservationTimesComponent({super.key});

  @override
  State<ReservationTimesComponent> createState() =>
      _ReservationTimesComponentState();
}

class _ReservationTimesComponentState extends State<ReservationTimesComponent> {
  final ValueNotifier<int?> isSelectedIndex = ValueNotifier<int?>(0);

  @override
  void initState() {
    if (context.read<MatchReservationBloc>().openTimes.isNotEmpty) {
      context.read<MatchReservationBloc>().reservatonTimeFrom =
          context.read<MatchReservationBloc>().openTimes[0];
      context.read<MatchReservationBloc>().reservatonTimeTo =
          DateFormat("HH:mm").format(
        DateFormat("HH:mm")
            .parse(
              context.read<MatchReservationBloc>().openTimes[0],
            )
            .add(
              const Duration(
                hours: 1,
                minutes: 30,
              ),
            ),
      );
    } else {
      context.read<MatchReservationBloc>().reservatonTimeFrom = null;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return RectangleContainer(
      radius: 15,
      bottomMargin: 0,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(8.w),
        height: 180.h,
        width: 1.sw,
        child: context.read<MatchReservationBloc>().openTimes.isEmpty
            ? const Center(
                child: Text('الملعب مغلق في هذا اليوم'),
              )
            : Directionality(
                textDirection: ui.TextDirection.rtl,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 36.w,
                    crossAxisCount: 5,
                    crossAxisSpacing: 12.0.w,
                    mainAxisSpacing: 20.0.w,
                  ),
                  itemCount:
                      context.read<MatchReservationBloc>().openDays!.length,
                  itemBuilder: (context, index) {
                    return ValueListenableBuilder(
                      valueListenable: isSelectedIndex,
                      builder: (context, selectedIndex, child) {
                        final isSelected = selectedIndex == index;
                        return GestureDetector(
                          onTap: () {
                            isSelectedIndex.value = index;
                            context
                                    .read<MatchReservationBloc>()
                                    .reservatonTimeFrom =
                                context
                                    .read<MatchReservationBloc>()
                                    .openTimes[index];
                            String reservatonTimeTo =
                                DateFormat("HH:mm").format(
                              DateFormat("HH:mm")
                                  .parse(
                                    context
                                        .read<MatchReservationBloc>()
                                        .openTimes[index],
                                  )
                                  .add(
                                    const Duration(
                                      hours: 1,
                                      minutes: 30,
                                    ),
                                  ),
                            );
                            context
                                .read<MatchReservationBloc>()
                                .reservatonTimeTo = reservatonTimeTo;
                          },
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color:
                                  isSelected ? XColors.primary : Colors.white,
                              borderRadius: BorderRadius.circular(4.sp),
                              border: Border.all(
                                color: const Color(0xFFB2B2B2),
                                width: 0.5.w,
                              ),
                            ),
                            child: Text(
                              context
                                  .read<MatchReservationBloc>()
                                  .openTimes[index],
                              style: TextStyle(
                                color: isSelected ? Colors.white : Colors.black,
                                fontSize: 15.sp,
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
      ),
    );
  }
}


// import 'dart:ui' as ui;

// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:intl/intl.dart';
// import 'package:x_sport/app/features/match/presentation/bloc/match_reservation_bloc.dart';
// import 'package:x_sport/core/constance/app_constance.dart';

// import '../../../../widgets/rectangle_container.dart';

// class ReservationTimesComponent extends StatefulWidget {
//   const ReservationTimesComponent({super.key});

//   @override
//   State<ReservationTimesComponent> createState() =>
//       _ReservationTimesComponentState();
// }

// class _ReservationTimesComponentState extends State<ReservationTimesComponent> {
//   final ValueNotifier<int?> isSelectedIndex = ValueNotifier<int?>(0);
//   @override
//   void initState() {
//     print('objectobjectobject');
//     context.read<MatchReservationBloc>().reservatonTimeFrom =
//         context.read<MatchReservationBloc>().openTimes.isNotEmpty
//             ? () {
//                 context.read<MatchReservationBloc>().openTimes[0];
//                 String reservatonTimeTo = DateFormat("HH:mm").format(
//                   DateFormat("HH:mm")
//                       .parse(
//                         context.read<MatchReservationBloc>().openTimes[0],
//                       )
//                       .add(
//                         const Duration(
//                           hours: 1,
//                           minutes: 30,
//                         ),
//                       ),
//                 );
//                 context.read<MatchReservationBloc>().reservatonTimeTo =
//                     reservatonTimeTo;
//               }()
//             : null;
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return RectangleContainer(
//       radius: 15,
//       bottomMargin: 0,
//       child: Container(
//         alignment: Alignment.center,
//         padding: EdgeInsets.all(8.w),
//         height: 180.h,
//         width: 1.sw,
//         child: context.read<MatchReservationBloc>().openTimes.isEmpty
//             ? const Center(
//                 child: Text('Court is not open on this day'),
//               )
//             : BlocBuilder<MatchReservationBloc, MatchReservationState>(
//                 buildWhen: (previous, current) {
//                   if (current.runtimeType ==
//                       const MatchReservationState.timesSuccess().runtimeType) {
//                     print('current.runtimeType${current.runtimeType}');
//                     return true;
//                   }
//                   return false;
//                 },
//                 // (previous is timesSuccess &&
//                 //     current is timesSuccess &&
//                 //     previous.openTimes != current.openTimes) ||
//                 // previous != current,

//                 builder: (context, state) {
//                   return state.maybeWhen(
//                     orElse: () => const Offstage(),
//                     loading: () => const Center(
//                       child: CircularProgressIndicator(
//                         color: XColors.primary,
//                       ),
//                     ),
//                     sportsFailure: (result) => const Offstage(),
//                     timesFailure: (result) => const Offstage(),
//                     courtsFailure: (result) => const Offstage(),
//                     sportsScuccess: (result) => const Offstage(),
//                     courtsScuccess: (result) => const Offstage(),
//                     timesSuccess: (reservations, openTimes) => Directionality(
//                       textDirection: ui.TextDirection.rtl,
//                       child: GridView.builder(
//                         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                           mainAxisExtent: 36.w,
//                           crossAxisCount: 5,
//                           crossAxisSpacing: 12.0.w,
//                           mainAxisSpacing: 20.0.w,
//                         ),
//                         itemCount: context
//                             .read<MatchReservationBloc>()
//                             .openDays!
//                             .length,
//                         itemBuilder: (context, index) {
//                           return ValueListenableBuilder(
//                             valueListenable: isSelectedIndex,
//                             builder: (context, selectedIndex, child) {
//                               final isSelected = selectedIndex == index;
//                               return GestureDetector(
//                                 onTap: () {
//                                   isSelectedIndex.value = index;
//                                   context
//                                           .read<MatchReservationBloc>()
//                                           .reservatonTimeFrom =
//                                       context
//                                           .read<MatchReservationBloc>()
//                                           .openTimes[index];
//                                   String reservatonTimeTo =
//                                       DateFormat("HH:mm").format(
//                                     DateFormat("HH:mm")
//                                         .parse(
//                                           context
//                                               .read<MatchReservationBloc>()
//                                               .openTimes[index],
//                                         )
//                                         .add(
//                                           const Duration(
//                                             hours: 1,
//                                             minutes: 30,
//                                           ),
//                                         ),
//                                   );
//                                   context
//                                       .read<MatchReservationBloc>()
//                                       .reservatonTimeTo = reservatonTimeTo;
//                                 },
//                                 child: Container(
//                                   alignment: Alignment.center,
//                                   decoration: BoxDecoration(
//                                     color: isSelected
//                                         ? XColors.primary
//                                         : Colors.white,
//                                     borderRadius: BorderRadius.circular(4.sp),
//                                     border: Border.all(
//                                       color: const Color(0xFFB2B2B2),
//                                       width: 0.5.w,
//                                     ),
//                                   ),
//                                   child: Text(
//                                     context
//                                         .read<MatchReservationBloc>()
//                                         .openTimes[index],
//                                     style: TextStyle(
//                                       color: isSelected
//                                           ? Colors.white
//                                           : Colors.black,
//                                       fontSize: 15.sp,
//                                     ),
//                                   ),
//                                 ),
//                               );
//                             },
//                           );
//                         },
//                       ),
//                     ),
//                   );
//                 },
//               ),
//       ),
//     );
//   }
// }

