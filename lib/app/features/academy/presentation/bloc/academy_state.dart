part of 'academy_bloc.dart';

@freezed
class AcademyState with _$AcademyState {
  const factory AcademyState.initial() = _Initial;

  // Get Sports Membership
  const factory AcademyState.getSportsMembershipLoading() =
      _GetSportsMembershipMembershipLoading;
  const factory AcademyState.getSportsMembershipFailure({
    @Default(null) Failure? failure,
  }) = _GetSportsMembershipFailure;
  const factory AcademyState.sportsMembershipFetched({
    @Default([]) List<SportEntity> sportsMembership,
  }) = _SportsMembershipFetched;

  // Get Suggested Academies
  const factory AcademyState.getSuggestedAcademiesLoading() =
      _GetSuggestedAcademiesLoading;
  const factory AcademyState.getSuggestedAcademiesFailure({
    @Default(null) Failure? failure,
  }) = _GetSuggestedAcademiesFailure;
  const factory AcademyState.suggestedAcademiesFetched({
    @Default([]) List<SportEntity> suggestedAcademies,
  }) = _SuggestedAcademiesFetched;

  // Get About Academy
  const factory AcademyState.getAboutAcademyLoading() = _GetAboutAcademyLoading;
  const factory AcademyState.getAboutAcademyFailure({
    @Default(null) Failure? failure,
  }) = _GetAboutAcademyFailure;
  const factory AcademyState.aboutAcademyFetched({
    @Default([]) List<SportEntity> aboutAcademy,
  }) = _AboutAcademyFetched;

  // Get Academy Courses
  const factory AcademyState.getAcademyCoursesLoading() =
      _GetAcademyCoursesLoading;
  const factory AcademyState.getAcademyCoursesFailure({
    @Default(null) Failure? failure,
  }) = _GetAcademyCoursesFailure;
  const factory AcademyState.academyCoursesFetched({
    @Default([]) List<SportEntity> academyCourses,
  }) = _AcademyCoursesFetched;

  // Get Academy Courses In Date
  const factory AcademyState.getAcademyCoursesInDateLoading() =
      _GetAcademyCoursesInDateLoading;
  const factory AcademyState.getAcademyCoursesInDateFailure({
    @Default(null) Failure? failure,
  }) = _GetAcademyCoursesInDateFailure;
  const factory AcademyState.academyCoursesInDateFetched({
    @Default([]) List<SportEntity> academyCoursesInDate,
  }) = _AcademyCoursesInDateFetched;

  // Get Academy Review
  const factory AcademyState.getAcademyReviewLoading() =
      _GetAcademyReviewLoading;
  const factory AcademyState.getAcademyReviewFailure({
    @Default(null) Failure? failure,
  }) = _GetAcademyReviewFailure;
  const factory AcademyState.academyReviewFetched({
    @Default([]) List<SportEntity> academyReview,
  }) = _AcademyReviewFetched;
}
