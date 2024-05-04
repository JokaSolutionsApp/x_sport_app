import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../domain/enitites/params/acedemy_params.dart';
import '../bloc/academy_bloc.dart';
import 'academy_page.dart';
import '../../../../widgets/buttons/submit_button.dart';
import '../../../../widgets/rectangle_container.dart';
import '../../../../../core/constance/app_constance.dart';
import '../../../../../core/constance/app_icons_icons.dart';
import '../../../../../core/utils/assets_managers/assets.gen.dart';
import '../../../../../main.dart';

class AllAcademiesPage extends StatefulWidget {
  const AllAcademiesPage({super.key});

  @override
  State<AllAcademiesPage> createState() => _AllAcademiesPageState();
}

class _AllAcademiesPageState extends State<AllAcademiesPage> {
  @override
  void initState() {
    super.initState();
    context.read<AcademyBloc>().add(
          AcademyEvent.getAllAcademies(
            params: AllAcademiesParams(pageNumber: 1, pageSize: 1),
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 38.h,
          ),
          Directionality(
            textDirection: TextDirection.rtl,
            child: Row(
              children: [
                IconButton(
                  onPressed: () =>
                      Navigator.of(navigatorKey.currentContext!).pop(),
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                  ),
                ),
                const Text(
                  'الاكاديميات',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 1.sw,
            child: BlocBuilder<AcademyBloc, AcademyState>(
              buildWhen: (previous, current) {
                if (current.runtimeType ==
                    const AcademyState.getAllAcademiesLoading().runtimeType) {
                  return true;
                }
                if (current.runtimeType ==
                    const AcademyState.allAcademiesFetched().runtimeType) {
                  return true;
                }
                if (current.runtimeType ==
                    const AcademyState.getAllAcademiesFailure().runtimeType) {
                  return true;
                }
                return false;
              },
              builder: (context, state) {
                return state.maybeWhen(
                  getAllAcademiesFailure: (value) => const Offstage(),
                  getAllAcademiesLoading: () => const Expanded(
                    child: Center(
                      child: CircularProgressIndicator(
                        color: XColors.primary,
                      ),
                    ),
                  ),
                  orElse: () => const Offstage(),
                  allAcademiesFetched: (allAcdemies) {
                    return ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: allAcdemies!.suggestedAcademies.length,
                      itemBuilder: (context, index) {
                        final academy = allAcdemies.suggestedAcademies[index];

                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AcademyPage(
                                  academy: academy,
                                ),
                              ),
                            );
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 0.02.sw),
                            child: RectangleContainer(
                              bottomMargin: 14,
                              radius: 10,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    flex: 10,
                                    child: Container(
                                      padding: EdgeInsets.only(
                                        left: 10.w,
                                        bottom: 10,
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Container(
                                                    height: 28.w,
                                                    width: 28.w,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4.sp),
                                                      color: XColors.primary
                                                          .withOpacity(0.22),
                                                    ),
                                                    child: Icon(
                                                      Icons.access_alarm,
                                                      size: 16.sp,
                                                    ),
                                                  ),
                                                  SizedBox(width: 10.w),
                                                  SubmitButton(
                                                      minWidth: 70,
                                                      height: 30,
                                                      radius: 4,
                                                      textColor: const Color(
                                                          0xFF2B2B2B),
                                                      textSize: 11,
                                                      fillColor: XColors.primary
                                                          .withOpacity(0.22),
                                                      text: 'تابع',
                                                      onPressed: () {}),
                                                ],
                                              ),
                                              Text(
                                                academy.name,
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 16.sp,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Text(
                                                    academy.openTime,
                                                    style: TextStyle(
                                                        color: const Color(
                                                            0xFF797878),
                                                        fontSize: 13.sp,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  SizedBox(width: 4.w),
                                                  Container(
                                                    height: 24.w,
                                                    width: 24.w,
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors.black,
                                                          width: 0.2),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4.sp),
                                                    ),
                                                    child: Icon(
                                                      AppIcons.clock_activity,
                                                      size: 16.sp,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Text(
                                                academy.regionName,
                                                style: TextStyle(
                                                    color:
                                                        const Color(0xFF797878),
                                                    fontSize: 14.sp,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            'بدءا من ${academy.minPrice}\$ شهريا',
                                            style: TextStyle(
                                                color: const Color(0xFF797878),
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          SizedBox(
                                            width: 170.w,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  '${academy.numReviews} مراجعة',
                                                  style: TextStyle(
                                                      color: const Color(
                                                          0xFF767676),
                                                      fontSize: 10.sp,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                Row(
                                                  children:
                                                      List<Widget>.generate(
                                                          5,
                                                          (int index) => Icon(
                                                                size: 17.sp,
                                                                Icons.star,
                                                                color: XColors
                                                                    .primary,
                                                              )),
                                                ),
                                                RectangleContainer(
                                                  bottomMargin: 0,
                                                  radius: 4,
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 5.0.w,
                                                            vertical: 0.w),
                                                    child: Text(
                                                      academy.evaluation
                                                          .toString(),
                                                      style: TextStyle(
                                                          color:
                                                              XColors.primary,
                                                          fontSize: 13.sp,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: 100.w,
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  RectangleContainer(
                                                    bottomMargin: 0,
                                                    radius: 4,
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 5.0.w,
                                                              vertical: 0.w),
                                                      child: Text(
                                                        'U12',
                                                        style: TextStyle(
                                                            color:
                                                                XColors.primary,
                                                            fontSize: 13.sp,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      ),
                                                    ),
                                                  ),
                                                  RectangleContainer(
                                                    bottomMargin: 0,
                                                    radius: 4,
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 5.0.w,
                                                              vertical: 0.w),
                                                      child: Text(
                                                        'U10',
                                                        style: TextStyle(
                                                            color:
                                                                XColors.primary,
                                                            fontSize: 13.sp,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      ),
                                                    ),
                                                  ),
                                                  RectangleContainer(
                                                    bottomMargin: 0,
                                                    radius: 4,
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 5.0.w,
                                                              vertical: 0.w),
                                                      child: Text(
                                                        'U7 ',
                                                        style: TextStyle(
                                                            color:
                                                                XColors.primary,
                                                            fontSize: 13.sp,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      ),
                                                    ),
                                                  ),
                                                ]),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 5,
                                    child: ShaderMask(
                                      shaderCallback: (Rect bounds) {
                                        return const LinearGradient(
                                          colors: [
                                            Colors.transparent,
                                            Colors.black
                                          ],
                                          stops: [
                                            0.02,
                                            1.0
                                          ], // Adjust the stop values to control the opacity area
                                          begin: Alignment.centerLeft,
                                          end: Alignment.centerRight,
                                        ).createShader(bounds);
                                      },
                                      blendMode: BlendMode.dstIn,
                                      child: AssetsManager
                                          .images.academy.academy
                                          .image(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
