import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport/app/features/academy/domain/enitites/get_courses_to_subscribe_entity.dart';
import 'package:x_sport/app/features/academy/presentation/components/course_card.dart';
import 'package:x_sport/main.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Directionality(
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
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (ctx, index) => const CourseCard(
                  course: GetCoursesToSubscribeEntity(
                      courseId: 1,
                      courseName: '',
                      sportId: 1,
                      sportName: '',
                      description: '',
                      startDate: '',
                      endDate: '',
                      gender: '',
                      price: 0),
                ),
              ),
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
          ),
        ),
      ),
    );
  }
}
