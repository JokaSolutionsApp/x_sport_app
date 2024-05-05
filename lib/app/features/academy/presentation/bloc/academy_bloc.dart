import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../domain/enitites/academy_entity.dart';
import '../../domain/usecase/add_academy_review.dart';
import '../../domain/usecase/get_all_Academies.dart';
import '../../domain/usecase/inroll_user_in_course.dart';

import '../../../../../core/error/failure.dart';
import '../../domain/enitites/about_academy_entity.dart';
import '../../domain/enitites/academy_membership_entity.dart';
import '../../domain/enitites/academy_review_entity.dart';
import '../../domain/enitites/get_courses_to_subscribe_entity.dart';
import '../../domain/enitites/params/acedemy_params.dart';
import '../../domain/usecase/get_about_academy_usecase.dart';
import '../../domain/usecase/get_academy_courses_in_date_usecase.dart';
import '../../domain/usecase/get_academy_courses_usecase.dart';
import '../../domain/usecase/get_academy_review_usecase.dart';
import '../../domain/usecase/get_sports_membership_usecase.dart';
import '../../domain/usecase/get_suggested_academies_usecase.dart';

part 'academy_bloc.freezed.dart';
part 'academy_event.dart';
part 'academy_state.dart';

@singleton
class AcademyBloc extends Bloc<AcademyEvent, AcademyState> {
  final GetSportsMembershipUseCase getSportsMembershipUseCase;
  final GetSuggestedAcademiesUseCase getSuggestedAcademiesUseCase;
  final GetAllAcademiesUseCase getAllAcademiesUseCase;
  final GetAboutAcademyUseCase getAboutAcademyUseCase;
  final GetCoursesToSubscribeUseCase getCoursesToSubscribeUseCase;
  final GetCoursesToSubscribeInDateUseCase getCoursesToSubscribeInDateUseCase;
  final GetAcademyReviewUseCase getAcademyReviewUseCase;
  final InrollUserInCourseUseCase inrollUserInCourseUseCase;
  final AddAcademyReviewUseCase addAcademyReviewUseCase;

  AcademyBloc(
    this.getSportsMembershipUseCase,
    this.getSuggestedAcademiesUseCase,
    this.getAboutAcademyUseCase,
    this.getCoursesToSubscribeUseCase,
    this.getCoursesToSubscribeInDateUseCase,
    this.getAcademyReviewUseCase,
    this.getAllAcademiesUseCase,
    this.inrollUserInCourseUseCase,
    this.addAcademyReviewUseCase,
  ) : super(const AcademyState.initial()) {
    on<AcademyEvent>((event, emit) async {
      await event.map(
        getSportsMembership: (event) async =>
            await _getSportsMembership(event, emit),
        getSuggestedAcademies: (event) async =>
            await _getSuggestedAcademies(event, emit),
        getAllAcademies: (event) async => await _getAllAcademies(event, emit),
        getAboutAcademy: (event) async => await _getAboutAcademy(event, emit),
        getCoursesToSubscribe: (event) async =>
            await _getCoursesToSubscribe(event, emit),
        getCoursesToSubscribeInDate: (event) async =>
            await _getCoursesToSubscribeInDate(event, emit),
        getAcademyReview: (event) async => await _getAcademyReview(event, emit),
        inrollUserInCourse: (event) async =>
            await _inrollUserInCourse(event, emit),
        addAcademyReview: (event) async => await _addAcademyReview(event, emit),
      );
    });
  }

  late AcademyEntity academy;

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
      print("allbloc ${f.message}");
      emit(AcademyState.getSuggestedAcademiesFailure(failure: f));
    }, (r) {
      if (r.suggestedAcademies.isNotEmpty) {
        print("allbloc ${r.suggestedAcademies.first.academyId}");
        academy = r;
        emit(AcademyState.suggestedAcademiesFetched(suggestedAcademies: r));
      } else {
        emit(AcademyState.getSuggestedAcademiesEmpty());
      }
    });
  }

  Future<void> _getAllAcademies(event, Emitter<AcademyState> emit) async {
    event as _$GetAllAcademiesEventImpl;
    print('bloc _getAllAcademies');

    emit(const AcademyState.getAllAcademiesLoading());
    final result = await getAllAcademiesUseCase(params: event.params);
    result.fold((f) {
      emit(AcademyState.getAllAcademiesFailure(failure: f));
    }, (r) {
      emit(AcademyState.allAcademiesFetched(allAcademies: r));
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

  Future<void> _getCoursesToSubscribe(event, Emitter<AcademyState> emit) async {
    event as _$GetCoursesToSubscribeEventImpl;
    emit(const AcademyState.getCoursesToSubscribeLoading());
    final result = await getCoursesToSubscribeUseCase(
        params: CourseParams(
      academyId: event.params.academyId,
      ageCategoryId: event.params.ageCategoryId,
      genderId: event.params.genderId,
    ));
    result.fold((f) {
      emit(AcademyState.getCoursesToSubscribeFailure(failure: f));
    }, (r) {
      print('_getCoursesToSubscribe Bloc $r');

      emit(AcademyState.academyCoursesFetched(academyCourses: r));
    });
  }

  Future<void> _getCoursesToSubscribeInDate(
      event, Emitter<AcademyState> emit) async {
    event as _$getCoursesToSubscribeInDateEventImpl;
    emit(const AcademyState.getCoursesToSubscribeInDateLoading());
    final result = await getCoursesToSubscribeInDateUseCase(
        academyId: event.academyId, targetDate: event.targetDate);
    result.fold((f) {
      emit(AcademyState.getCoursesToSubscribeInDateFailure(failure: f));
    }, (r) {
      print('_getCoursesToSubscribeInDate $r');

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

  Future<void> _inrollUserInCourse(event, Emitter<AcademyState> emit) async {
    event as _$InrollUserInCourseEventImpl;
    emit(const AcademyState.inrollUserInCourseLoading());
    final result = await inrollUserInCourseUseCase(params: event.params);
    result.fold((f) {
      emit(AcademyState.inrollUserInCourseFailure(failure: f));
    }, (r) {
      print('_inrollUserInCourse $r');

      emit(AcademyState.courseInrolled(courseInrolled: r));
    });
  }

  Future<void> _addAcademyReview(event, Emitter<AcademyState> emit) async {
    event as _$AddAcademyReviewEventImpl;
    emit(const AcademyState.addAcademyReviewLoading());
    final result = await addAcademyReviewUseCase(params: event.params);
    result.fold((f) {
      emit(AcademyState.addAcademyReviewFailure(failure: f));
    }, (r) {
      print('addAcademyReview $r');

      emit(AcademyState.reviewAdded(reviewAdded: r));
    });
  }
}
