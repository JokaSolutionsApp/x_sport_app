import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:x_sport/core/constance/app_constance.dart';
import 'package:x_sport/main.dart';
import 'package:x_sport/app/features/match/presentation/components/reservation_dates_component.dart';
import 'package:x_sport/app/features/match/presentation/components/reservation_sports_component.dart';
import 'package:x_sport/app/features/match/presentation/components/reservation_times_component.dart';
import 'package:x_sport/app/features/paymnet/presentation/pages/payment_screen.dart';
import 'package:x_sport/app/widgets/buttons/submit_button.dart';
import 'package:x_sport/app/widgets/rectangle_container.dart';

import '../components/match_reservation_components/reservation_stadiums_component.dart';
import '../../../../controllers/fileds_bloc.dart';
import '../../../../widgets/text_fields/location_field.dart';

class MatchReservationScreen extends StatefulWidget {
  const MatchReservationScreen({super.key});

  @override
  State<MatchReservationScreen> createState() => _MatchReservationScreenState();
}

class _MatchReservationScreenState extends State<MatchReservationScreen> {
  TextEditingController location = TextEditingController();
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
                icon: Icon(Icons.arrow_forward_ios))
          ]),
      body: SingleChildScrollView(
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
                            right: 12.sp, left: 12.w, top: 8.w, bottom: 28.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              ':حدد الرياضة التي ستلعب',
                              style: TextStyle(
                                  fontSize: 18.sp, fontWeight: FontWeight.w500),
                            ),
                            ReservationSportsComponent()
                          ],
                        ),
                      ),
                    ),
                    RectangleContainer(
                      bottomMargin: 10,
                      radius: 14,
                      child: Padding(
                        padding: EdgeInsets.only(
                            right: 12.sp, left: 12.w, top: 8.w, bottom: 28.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'اين تريد ان تلعب؟',
                              style: TextStyle(
                                  fontSize: 18.sp, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(height: 4.w),
                            Align(
                              alignment: Alignment.center,
                              child: LocationField(
                                hintText: 'ملاعب قريبة',
                                controller: location,
                                keyboardType: TextInputType.emailAddress,
                                textStream: rankSearchStream.name,
                                onChanged: rankSearchStream.changeName,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ReservationStadiumsComponent(),
              SizedBox(height: 4.w),
              SizedBox(
                width: 0.94.sw,
                child: Column(
                  children: [
                    RectangleContainer(
                      bottomMargin: 10,
                      radius: 14,
                      child: Padding(
                        padding: EdgeInsets.only(
                            right: 12.sp, left: 12.w, top: 8.w, bottom: 28.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              ':حدد تاريخ وزمن المباراة',
                              style: TextStyle(
                                  fontSize: 18.sp, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'يمكنك تنظيم مباراة خلال مدة اقصاها 7 ايام',
                              style: TextStyle(
                                  color: Color(0xFF909090),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                            ReservationDatesComponent()
                          ],
                        ),
                      ),
                    ),
                    ReservationTimesComponent(),
                  ],
                ),
              ),
              SubmitButton(
                  radius: 22,
                  height: 28.w,
                  minWidth: 170.w,
                  fillColor: XColors.Submit_Button_Color,
                  text: 'التالي',
                  onPressed: () {
                    Navigator.of(navigatorKey.currentContext!).push(
                      MaterialPageRoute(builder: (context) => PaymentScreen()),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
