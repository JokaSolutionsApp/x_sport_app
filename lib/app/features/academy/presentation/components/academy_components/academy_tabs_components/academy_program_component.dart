import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport/app/features/academy/domain/enitites/params/acedemy_params.dart';

import '../../../bloc/academy_bloc.dart';
import '../program_tab_components/program_dates_component.dart';
import '../program_tab_components/training_schedule_component.dart';

class AcademyProgramtComponent extends StatefulWidget {
  final int academyId;
  const AcademyProgramtComponent({super.key, required this.academyId});

  @override
  State<AcademyProgramtComponent> createState() =>
      _AcademyProgramtComponentState();
}

class _AcademyProgramtComponentState extends State<AcademyProgramtComponent> {
  @override
  void initState() {
    super.initState();
    context.read<AcademyBloc>().add(AcademyEvent.getCoursesToSubscribe(
        params: CourseParams(academyId: 1, ageCategoryId: 1, genderId: 1)));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AcademyBloc, AcademyState>(
      buildWhen: (prev, cur) {
        if (cur.runtimeType !=
            const AcademyState.getCoursesToSubscribeLoading().runtimeType) {
          return true;
        }
        return false;
      },
      builder: (context, state) {
        return state.maybeWhen(
            orElse: () => Offstage(),
            getCoursesToSubscribeLoading: () => CircularProgressIndicator(),
            getCoursesToSubscribeFailure: (failure) => Offstage(),
            academyCoursesFetched: (courses) {
              return Column(
                children: [
                  ProgramDatesComponent(),
                  SizedBox(height: 30.h),
                  TrainingScheduleComponent(courses: courses),
                ],
              );
            });
      },
    );
  }
}
