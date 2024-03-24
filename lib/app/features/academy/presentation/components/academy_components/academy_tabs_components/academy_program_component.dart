import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    context
        .read<AcademyBloc>()
        .add(AcademyEvent.getAcademyCourses(academyId: widget.academyId));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AcademyBloc, AcademyState>(
      buildWhen: (prev, cur) {
        if (cur.runtimeType !=
            const AcademyState.getAcademyCoursesLoading().runtimeType) {
          return true;
        }
        return false;
      },
      builder: (context, state) {
        return state.maybeWhen(
            orElse: () => Offstage(),
            getAcademyCoursesLoading: () => CircularProgressIndicator(),
            getAcademyCoursesFailure: (failure) => Offstage(),
            academyCoursesFetched: (academyCourses) {
              final program = academyCourses!.ageCategoriesWithCoursesInDate;
              return Column(
                children: [
                  ProgramDatesComponent(
                    program: program,
                  ),
                  SizedBox(height: 30.h),
                  TrainingScheduleComponent(),
                ],
              );
            });
      },
    );
  }
}
