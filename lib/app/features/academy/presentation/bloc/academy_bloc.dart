import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import '../../domain/enitites/about_academy_entity.dart';
import '../../domain/enitites/academy_course_entity.dart';
import '../../domain/enitites/academy_membership_entity.dart';
import '../../domain/enitites/academy_review_entity.dart';
import '../../domain/enitites/get_academy_courses_entity.dart';
import '../../domain/enitites/params/acedemy_params.dart';
import '../../domain/enitites/suggested_academy_entity.dart';
import '../../domain/usecase/get_about_academy_usecase.dart';
import '../../domain/usecase/get_academy_courses_in_date_usecase.dart';
import '../../domain/usecase/get_academy_courses_usecase.dart';
import '../../domain/usecase/get_academy_review_usecase.dart';
import '../../domain/usecase/get_sports_membership_usecase.dart';
import '../../domain/usecase/get_suggested_academies_usecase.dart';
import '../../../auth/domain/enitites/sport_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../core/error/failure.dart';
part 'academy_event.dart';
part 'academy_state.dart';
part 'academy_bloc.freezed.dart';

@singleton
class AcademyBloc extends Bloc<AcademyEvent, AcademyState> {
  final GetSportsMembershipUseCase getSportsMembershipUseCase;
  final GetSuggestedAcademiesUseCase getSuggestedAcademiesUseCase;
  final GetAboutAcademyUseCase getAboutAcademyUseCase;
  final GetAcademyCoursesUseCase getAcademyCoursesUseCase;
  final GetAcademyCoursesInDateUseCase getAcademyCoursesInDateUseCase;
  final GetAcademyReviewUseCase getAcademyReviewUseCase;

  AcademyBloc(
    this.getSportsMembershipUseCase,
    this.getSuggestedAcademiesUseCase,
    this.getAboutAcademyUseCase,
    this.getAcademyCoursesUseCase,
    this.getAcademyCoursesInDateUseCase,
    this.getAcademyReviewUseCase,
  ) : super(const AcademyState.initial()) {
    on<AcademyEvent>((event, emit) async {
      await event.map(
        getSportsMembership: (event) async =>
            await _getSportsMembership(event, emit),
        getSuggestedAcademies: (event) async =>
            await _getSuggestedAcademies(event, emit),
        getAboutAcademy: (event) async => await _getAboutAcademy(event, emit),
        getAcademyCourses: (event) async =>
            await _getAcademyCourses(event, emit),
        getAcademyCoursesInDate: (event) async =>
            await _getAcademyCoursesInDate(event, emit),
        getAcademyReview: (event) async => await _getAcademyReview(event, emit),
      );
    });
  }

  Future<void> _getSportsMembership(event, Emitter<AcademyState> emit) async {
    event as _$GetSportsMembershipEventImpl;
    emit(const AcademyState.getSportsMembershipLoading());
    final result = await getSportsMembershipUseCase();
    result.fold((f) {
      emit(AcademyState.getSuggestedAcademiesFailure(failure: f));
    }, (r) {
      print('_getSportsMembership $r');

      emit(AcademyState.sportsMembershipFetched(sportsMembership: r));
    });
  }

  Future<void> _getSuggestedAcademies(event, Emitter<AcademyState> emit) async {
    event as _$GetSuggestedAcademiesEventImpl;
    print('bloc _getSuggestedAcademies');

    emit(const AcademyState.getSuggestedAcademiesLoading());
    final result = await getSuggestedAcademiesUseCase(params: event.params);
    result.fold((f) {
      emit(AcademyState.getSuggestedAcademiesFailure(failure: f));
    }, (r) {
      print('bloc _getSuggestedAcademies $r');

      emit(AcademyState.suggestedAcademiesFetched(suggestedAcademies: r));
    });
  }

  Future<void> _getAboutAcademy(event, Emitter<AcademyState> emit) async {
    event as _$GetAboutAcademyEventImpl;
    emit(const AcademyState.getAboutAcademyLoading());
    final result = await getAboutAcademyUseCase(academyId: event.academyId);
    result.fold((f) {
      emit(AcademyState.getAboutAcademyFailure(failure: f));
    }, (r) {
      print(' _getAboutAcademy $r');

      emit(AcademyState.aboutAcademyFetched(aboutAcademy: r));
    });
  }

  Future<void> _getAcademyCourses(event, Emitter<AcademyState> emit) async {
    event as _$GetAcademyCoursesEventImpl;
    emit(const AcademyState.getAcademyCoursesLoading());
    final result = await getAcademyCoursesUseCase(academyId: event.academyId);
    result.fold((f) {
      emit(AcademyState.getAcademyCoursesFailure(failure: f));
    }, (r) {
      print('_getAcademyCourses Bloc $r');

      emit(AcademyState.academyCoursesFetched(academyCourses: r));
    });
  }

  Future<void> _getAcademyCoursesInDate(
      event, Emitter<AcademyState> emit) async {
    event as _$GetAcademyCoursesInDateEventImpl;
    emit(const AcademyState.getAcademyCoursesInDateLoading());
    final result = await getAcademyCoursesInDateUseCase(
        academyId: event.academyId, targetDate: event.targetDate);
    result.fold((f) {
      emit(AcademyState.getAcademyCoursesInDateFailure(failure: f));
    }, (r) {
      print('_getAcademyCoursesInDate $r');

      emit(AcademyState.academyCoursesInDateFetched(academyCoursesInDate: r));
    });
  }

  Future<void> _getAcademyReview(event, Emitter<AcademyState> emit) async {
    event as _$GetAcademyReviewEventImpl;
    emit(const AcademyState.getAcademyReviewLoading());
    final result = await getAcademyReviewUseCase(academyId: event.academyId);
    result.fold((f) {
      emit(AcademyState.getAcademyReviewFailure(failure: f));
    }, (r) {
      print('_getAcademyReview $r');

      emit(AcademyState.academyReviewFetched(academyReview: r));
    });
  }
}
