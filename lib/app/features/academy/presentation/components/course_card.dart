import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constance/app_constance.dart';
import '../../../../../main.dart';
import '../../domain/enitites/get_courses_to_subscribe_entity.dart';
import '../pages/academy_register_page.dart';

class CourseCard extends StatelessWidget {
  final GetCoursesToSubscribeEntity course;
  const CourseCard({
    super.key,
    required this.course,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.symmetric(vertical: 10),
      color: XColors.Background_Color1,
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () {
          Navigator.of(navigatorKey.currentContext!).push(
            MaterialPageRoute(
              builder: (context) => const AcademyRegisterPage(),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 18.0,
            vertical: 9.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.sports_soccer,
                        color: XColors.white,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          right: 4.w,
                        ),
                        child: Text(
                          course.courseName,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: XColors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  SizedBox(
                    width: 0.6.sw,
                    child: Text(
                      course.description,
                      style: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: XColors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 7.h,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.calendar_month,
                        color: XColors.white,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 4.w),
                        child: Text(
                          'من ${course.startDate}',
                          style: const TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: XColors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10.w),
                        child: Text(
                          'حتى ${course.endDate}',
                          style: const TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: XColors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Row(
                    children: [
                      const Text(
                        'تفاصيل',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: XColors.white,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          right: 4.w,
                        ),
                        child: const Icon(
                          Icons.arrow_outward,
                          color: XColors.white,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      right: 4.w,
                    ),
                    child: const Text(
                      'ذكور 7 U',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: XColors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  Text(
                    '${course.price}\$',
                    style: const TextStyle(
                      height: 0.8,
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: XColors.white,
                    ),
                  ),
                  const Text(
                    'Total',
                    style: TextStyle(
                      height: 0.8,
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: XColors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
