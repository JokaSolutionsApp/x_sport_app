import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/constance/app_constance.dart';
import '../../../../../../../core/constance/app_icons_icons.dart';
import '../../../../../../widgets/rectangle_container.dart';
import '../../../bloc/academy_bloc.dart';

class AcademyAboutComponent extends StatefulWidget {
  final int academyId;
  const AcademyAboutComponent({super.key, required this.academyId});

  @override
  State<AcademyAboutComponent> createState() => _AcademyAboutComponentState();
}

class _AcademyAboutComponentState extends State<AcademyAboutComponent> {
  @override
  void initState() {
    context
        .read<AcademyBloc>()
        .add(AcademyEvent.getAboutAcademy(academyId: widget.academyId));
    super.initState();
  }

  final academyServices = [
    {
      'image': AppIcons.transport,
      'title': 'مواصلات \nمؤمنة',
    },
    {
      'image': AppIcons.meds,
      'title': 'عناية \nطبية',
    },
    {
      'image': AppIcons.access_time,
      'title': 'اوقات \nمرنة',
    },
    {
      'image': AppIcons.grass,
      'title': 'عشب \nطبيعي',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AcademyBloc, AcademyState>(
      buildWhen: (prev, cur) {
        if (cur.runtimeType ==
            const AcademyState.aboutAcademyFetched().runtimeType) {
          return true;
        }
        return false;
      },
      builder: (context, state) {
        print("AcademyState $state");
        return state.maybeWhen(
          orElse: () => Offstage(),
          getAboutAcademyLoading: () => Offstage(),
          getAboutAcademyFailure: (failure) => Offstage(),
          aboutAcademyFetched: (aboutAcademy) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10.w),
                  height: 0.07.sh,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  '${aboutAcademy!.openAt} to ${aboutAcademy.closeAt}',
                                  style: TextStyle(
                                      height: 2.w,
                                      color: const Color(0xFFA2A2A2),
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  aboutAcademy.phone,
                                  style: TextStyle(
                                      color: const Color(0xFFA2A2A2),
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            SizedBox(width: 10.w),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                    padding: EdgeInsets.all(2.w),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(4.sp),
                                        border: Border.all(
                                            color: const Color(0xFFA2A2A2),
                                            width: 0.2.w)),
                                    child: Icon(
                                      Icons.access_time_sharp,
                                      size: 16.sp,
                                      color: const Color(0xFFA2A2A2),
                                    )),
                                Container(
                                    padding: EdgeInsets.all(2.w),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(4.sp),
                                        border: Border.all(
                                            color: const Color(0xFFA2A2A2),
                                            width: 0.2.w)),
                                    child: Icon(
                                      Icons.call,
                                      size: 16.sp,
                                      color: const Color(0xFF797878),
                                    ))
                              ],
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              aboutAcademy.name,
                              style: TextStyle(
                                  fontSize: 20.sp, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'الموقع الجغرافي',
                              style: TextStyle(
                                  color: const Color(0xFF797878),
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ]),
                ),
                Container(
                  margin: EdgeInsets.only(top: 18.h),
                  alignment: Alignment.topRight,
                  width: 0.74.sw,
                  child: Text(
                    aboutAcademy.description,
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        color: const Color(0xFF6C6C6C), fontSize: 15.sp),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20.w),
                  height: 0.13.sh,
                  width: 0.8.sw,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: aboutAcademy.services.length,
                      itemBuilder: (context, index) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                margin: EdgeInsets.symmetric(horizontal: 13.w),
                                alignment: Alignment.center,
                                height: 70.w,
                                width: 70.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(9.sp),
                                    color: const Color(0xFFECECFB),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.2),
                                          blurRadius: 12,
                                          offset: Offset(0, 4.w))
                                    ]),
                                child: Icon(
                                  academyServices[index]['image'] as IconData,
                                  color: XColors.primary,
                                )),
                            Text(
                              aboutAcademy.services[index].serviceName
                                  .replaceAll(' ', '\n'),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        );
                      }),
                ),
                SizedBox(
                  height: 20.w,
                ),
                RectangleContainer(
                  bottomMargin: 10,
                  radius: 13,
                  child: Container(
                    padding: EdgeInsets.only(right: 10.w),
                    height: 0.08.sh,
                    width: 1.sw,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'الاشتراك بدءا من ${aboutAcademy.minPrice}\$ الى ${aboutAcademy.maxPrice}\$ شهريا',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          'يختلف الاشتراك حسب الفئات السنية ومزايا اخرى',
                          style: TextStyle(
                              color: const Color(0xFF6E6E6E),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
