import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../main.dart';
import '../../domain/enitites/get_courses_to_subscribe_entity.dart';
import 'package:x_sport/app/features/academy/presentation/bloc/academy_bloc.dart';
import '../components/course_card.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 18.0,
          vertical: 16.0,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 30.h,
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () =>
                      Navigator.of(navigatorKey.currentContext!).pop(),
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                  ),
                ),
                const Text(
                  'اختر البرنامج التدريبي المناسب',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 23.h,
            ),
            BlocBuilder<AcademyBloc, AcademyState>(
              buildWhen: (prev, cur) {
                if (cur.runtimeType ==
                    const AcademyState.academyCoursesFetched().runtimeType) {
                  return true;
                }
                return false;
              },
              builder: (context, state) {
                return state.maybeWhen(
                    orElse: () => Offstage(),
                    getCoursesToSubscribeLoading: () => Offstage(),
                    getCoursesToSubscribeFailure: (failure) => Offstage(),
                    academyCoursesFetched: (courses) {
                      List<GetCoursesToSubscribeEntity> academyCourses =
                          courses;
                      return Column(
                        children: [
                          ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: academyCourses.length,
                              itemBuilder: (ctx, index) {
                                final course = academyCourses[index];

                                return CourseCard(course: course);
                              }),
                          // SizedBox(
                          //   width: 190.w,
                          //   child: ElevatedButton(
                          //     onPressed: () {},
                          //     style: ElevatedButton.styleFrom(
                          //       backgroundColor: XColors.primary,
                          //       foregroundColor: const Color.fromRGBO(255, 255, 255, 1),
                          //       shape: const RoundedRectangleBorder(),
                          //     ),
                          //     child: const Text(
                          //       'التالي',
                          //       style: TextStyle(
                          //         fontSize: 10,
                          //         fontWeight: FontWeight.w500,
                          //       ),
                          //     ),
                          //   ),
                          // ),
                        ],
                      );
                    });
              },
            ),
          ],
        ),
      ),
    );
  }
}
