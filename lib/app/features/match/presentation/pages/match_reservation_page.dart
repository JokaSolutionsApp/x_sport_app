import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constance/app_constance.dart';
import '../../../../widgets/buttons/submit_button.dart';
import '../../../../widgets/rectangle_container.dart';
import '../../domain/enitites/sport_stadium_entity.dart';
import '../bloc/match_reservation_bloc.dart';
import '../components/reservation_dates_component.dart';
import '../components/reservation_sports_component.dart';
import '../components/reservation_stadiums_component.dart';
import '../components/reservation_times_component.dart';
import '../components/stadium_search_component.dart';

class MatchReservationPage extends StatefulWidget {
  const MatchReservationPage({super.key});

  @override
  State<MatchReservationPage> createState() => _MatchReservationPageState();
}

class _MatchReservationPageState extends State<MatchReservationPage> {
  TextEditingController location = TextEditingController();
  List<String> options = ['لمرة واحدة', 'متكرر'];
  String? currentOption;
  String searchText = '';
  List<SportStadiumEntity>? filteredStadiums;

  searchCourts() {
    filteredStadiums = context
        .read<MatchReservationBloc>()
        .stadiums!
        .where((court) =>
            court.stadiumName.toLowerCase().contains(searchText.toLowerCase()))
        .toList();
  }

  @override
  void initState() {
    currentOption = options[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        // toolbarHeight: 0.04.sh,
        centerTitle: true,
        title: Text(
          'ابحث عن خصم جديد',
          style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.arrow_forward_ios))
        ],
      ),
      body: BlocBuilder<MatchReservationBloc, MatchReservationState>(
        // buildWhen: (previous, current) {
        //   print('current.runtimeType${current.runtimeType}');
        //   current.runtimeType ==
        //       const MatchReservationState.timesSuccess().runtimeType;
        //   return true;
        // },
        //
        // buildWhen: (previous, current) =>
        //     (previous is timesSuccess &&
        //         current is timesSuccess &&
        //         previous.openTimes != current.openTimes) ||
        //     previous != current,
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const Offstage(),
            loading: () => const Center(
              child: CircularProgressIndicator(
                color: XColors.primary,
              ),
            ),
            sportsFailure: (result) => const Offstage(),
            timesFailure: (result) => const Offstage(),
            courtsFailure: (result) => const Offstage(),
            sportsScuccess: (result) => const Offstage(),
            courtsScuccess: (result) => const Offstage(),
            timesSuccess: (reservations, openTimes) {
              return SingleChildScrollView(
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                        width: 0.94.sw,
                        child: Column(
                          children: [
                            RectangleContainer(
                              bottomMargin: 10,
                              radius: 14,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    right: 12.sp,
                                    left: 12.w,
                                    top: 8.w,
                                    bottom: 28.w),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      ':حدد الرياضة التي ستلعب',
                                      style: TextStyle(
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    ReservationSportsComponent(
                                      sports: context
                                          .read<MatchReservationBloc>()
                                          .sports,
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      ':حدد نوع الحجز',
                                      style: TextStyle(
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Directionality(
                                      textDirection: TextDirection.rtl,
                                      child: Row(
                                        children: [
                                          Radio(
                                            activeColor: XColors.primary,
                                            value: options[0],
                                            groupValue: currentOption,
                                            onChanged: (value) {
                                              setState(() {
                                                currentOption =
                                                    value.toString();
                                              });
                                            },
                                          ),
                                          const Text('لمرة واحدة'),
                                          Radio(
                                            activeColor: XColors.primary,
                                            value: options[1],
                                            groupValue: currentOption,
                                            onChanged: (value) {
                                              setState(() {
                                                currentOption =
                                                    value.toString();
                                              });
                                            },
                                          ),
                                          const Text('متكرر'),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            StadiumSearchComponent(
                              onChanged: (value) => searchText = value,
                              onPressed: () {
                                setState(
                                  () {
                                    searchCourts();
                                  },
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      ReservationStadiumsComponent(
                        stadiums: filteredStadiums ??
                            context.read<MatchReservationBloc>().stadiums,
                      ),
                      Column(
                        children: [
                          SizedBox(height: 4.w),
                          SizedBox(
                            width: 0.94.sw,
                            child: Column(
                              children: [
                                ReservationDatesComponent(
                                  times: reservations,
                                ),
                                ReservationTimesComponent(),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SubmitButton(
                        radius: 22,
                        height: 28.w,
                        minWidth: 170.w,
                        fillColor: XColors.primary,
                        text: 'احجز',
                        onPressed: () {
                          if (context
                                  .read<MatchReservationBloc>()
                                  .reservatonTimeFrom ==
                              null) {
                            EasyLoading.showError('please select valid dates');
                          } else {
                            BlocProvider.of<MatchReservationBloc>(context).add(
                              const MatchReservationEvent.reserve(),
                            );
                          }
                          // print(context
                          //     .read<MatchReservationBloc>()
                          //     .stadiumFloorId);
                          // print(context
                          //     .read<MatchReservationBloc>()
                          //     .reservationDate);
                          // print(context
                          //     .read<MatchReservationBloc>()
                          //     .reservatonTimeFrom);
                          // print(context
                          //     .read<MatchReservationBloc>()
                          //     .reservatonTimeTo);
                        },
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
