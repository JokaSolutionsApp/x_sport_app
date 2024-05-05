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
    @Default([]) List<AcademyMembershipEntity> sportsMembership,
  }) = _SportsMembershipFetched;

  // Get Suggested Academies
  const factory AcademyState.getSuggestedAcademiesLoading() =
      _GetSuggestedAcademiesLoading;
  const factory AcademyState.getSuggestedAcademiesEmpty() =
      _GetSuggestedAcademiesEmpty;
  const factory AcademyState.getSuggestedAcademiesFailure({
    @Default(null) Failure? failure,
  }) = _GetSuggestedAcademiesFailure;
  const factory AcademyState.suggestedAcademiesFetched({
    @Default(null) AcademyEntity? suggestedAcademies,
  }) = _SuggestedAcademiesFetched;

  // Get All Academies
  const factory AcademyState.getAllAcademiesLoading() = _GetAllAcademiesLoading;
  const factory AcademyState.getAllAcademiesFailure({
    @Default(null) Failure? failure,
  }) = _GetAllAcademiesFailure;
  const factory AcademyState.allAcademiesFetched({
    @Default(null) AcademyEntity? allAcademies,
  }) = _AllAcademiesFetched;

  // Get About Academy
  const factory AcademyState.getAboutAcademyLoading() = _GetAboutAcademyLoading;
  const factory AcademyState.getAboutAcademyFailure({
    @Default(null) Failure? failure,
  }) = _GetAboutAcademyFailure;
  const factory AcademyState.aboutAcademyFetched({
    @Default(null) AboutAcademyEntity? aboutAcademy,
  }) = _AboutAcademyFetched;

  // Get Academy Courses
  const factory AcademyState.getCoursesToSubscribeLoading() =
      _GetCoursesToSubscribeLoading;
  const factory AcademyState.getCoursesToSubscribeFailure({
    @Default(null) Failure? failure,
  }) = _GetCoursesToSubscribeFailure;
  const factory AcademyState.academyCoursesFetched({
    @Default([]) List<GetCoursesToSubscribeEntity> academyCourses,
  }) = _AcademyCoursesFetched;

  // Get Academy Courses In Date
  const factory AcademyState.getCoursesToSubscribeInDateLoading() =
      _GetCoursesToSubscribeInDateLoading;
  const factory AcademyState.getCoursesToSubscribeInDateFailure({
    @Default(null) Failure? failure,
  }) = _GetCoursesToSubscribeInDateFailure;
  const factory AcademyState.academyCoursesInDateFetched({
    @Default(null) GetCoursesToSubscribeEntity? academyCoursesInDate,
  }) = _AcademyCoursesInDateFetched;

  // Get Academy Review
  const factory AcademyState.getAcademyReviewLoading() =
      _GetAcademyReviewLoading;
  const factory AcademyState.getAcademyReviewFailure({
    @Default(null) Failure? failure,
  }) = _GetAcademyReviewFailure;
  const factory AcademyState.academyReviewFetched({
    @Default([]) List<AcademyReviewEntity> academyReview,
  }) = _AcademyReviewFetched;

  //  Inroll UserIn Course
  const factory AcademyState.inrollUserInCourseLoading() =
      _InrollUserInCourseLoadingLoading;
  const factory AcademyState.inrollUserInCourseFailure({
    @Default(null) Failure? failure,
  }) = _InrollUserInCourseFailure;
  const factory AcademyState.courseInrolled({
    @Default(false) bool courseInrolled,
  }) = _CourseInrolled;

  // Get Academy Review
  const factory AcademyState.addAcademyReviewLoading() =
      _AddAcademyReviewLoading;
  const factory AcademyState.addAcademyReviewFailure({
    @Default(null) Failure? failure,
  }) = _AddAcademyReviewFailure;
  const factory AcademyState.reviewAdded({
    @Default(false) bool reviewAdded,
  }) = _ReviewAdded;
}
