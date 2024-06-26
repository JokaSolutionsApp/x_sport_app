import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport/app/features/academy/domain/enitites/age_category_dropdown_item.dart';
import 'package:x_sport/app/features/academy/domain/enitites/get_courses_to_subscribe_entity.dart';
import 'package:x_sport/app/features/academy/domain/enitites/params/acedemy_params.dart';
import 'package:x_sport/app/features/academy/domain/enitites/suggested_academy_entity.dart';
import 'package:x_sport/app/features/academy/presentation/bloc/academy_bloc.dart';
import 'course_card.dart';
import '../../../../../core/constance/app_constance.dart';

class CoursesTab extends StatefulWidget {
  final List<AgeCategoryDropdownItem> ageCategoriesDropdownItems;
  final SuggestedAcademyEntity academy;

  const CoursesTab({
    super.key,
    required this.academy,
    required this.ageCategoriesDropdownItems,
  });

  @override
  State<CoursesTab> createState() => _CoursesTabState();
}

class _CoursesTabState extends State<CoursesTab> {
  @override
  void initState() {
    super.initState();
    context.read<AcademyBloc>().add(AcademyEvent.getCoursesToSubscribe(
        params: CourseParams(
            academyId: widget.academy.academyId,
            ageCategoryId: 15,
            genderId: 1)));
  }

  @override
  Widget build(BuildContext context) {
    // AgeCategoryDropdownItem? selectedValue;
    return SingleChildScrollView(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            SizedBox(
              height: 15.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 22.w,
              ),
              child: Row(
                children: [
                  const Text(
                    'اختر برنامجاََ تدريبياََ يناسبك!',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: XColors.black,
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: 105.w,
                    height: 36.h,
                    child: DropdownButtonFormField<AgeCategoryDropdownItem>(
                        // value: selectedValue,
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: XColors.secondary_text_color,
                          fontWeight: FontWeight.w500,
                        ),
                        icon: Icon(
                          Icons.keyboard_arrow_down_sharp,
                          color: XColors.secondary_text_color,
                          size: 20.sp,
                        ),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 10.w,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.sp),
                            borderSide: const BorderSide(
                              color: Color(0xFFCFCFCF),
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.sp),
                            borderSide: const BorderSide(
                              color: Color(0xFFCFCFCF),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.sp),
                            borderSide: const BorderSide(
                              color: Color(0xFFCFCFCF),
                            ),
                          ),
                          filled: true,
                          fillColor: XColors.white,
                        ),
                        onChanged: (newValue) {
                          if (newValue != null) {
                            context.read<AcademyBloc>().add(
                                AcademyEvent.getCoursesToSubscribe(
                                    params: CourseParams(
                                        academyId: widget.academy.academyId,
                                        ageCategoryId: newValue.id,
                                        genderId: 1)));
                            print(newValue.name);
                          }
                        },
                        items: widget.ageCategoriesDropdownItems
                            .map(
                              (e) => DropdownMenuItem<AgeCategoryDropdownItem>(
                                value: e,
                                child: Text(e.name),
                              ),
                            )
                            .toList()),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 44.h,
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
                      return ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: courses.length,
                          itemBuilder: (ctx, index) {
                            GetCoursesToSubscribeEntity course = courses[index];

                            return CourseCard(course: course);
                          });
                    });
              },
            )
          ],
        ),
      ),
    );
  }
}
