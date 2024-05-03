part of 'academy_bloc.dart';

@freezed
class AcademyEvent with _$AcademyEvent {
  const factory AcademyEvent.getSportsMembership() = _GetSportsMembershipEvent;
  const factory AcademyEvent.getSuggestedAcademies(
      {required SuggestedAcademyParams params}) = _GetSuggestedAcademiesEvent;
  const factory AcademyEvent.getAllAcademies(
      {required AllAcademiesParams params}) = _GetAllAcademiesEvent;
  const factory AcademyEvent.getAboutAcademy({required int academyId}) =
      _GetAboutAcademyEvent;
  const factory AcademyEvent.getCoursesToSubscribe(
      {required CourseParams params}) = _GetCoursesToSubscribeEvent;
  const factory AcademyEvent.getCoursesToSubscribeInDate(
      {required int academyId,
      required String targetDate}) = _getCoursesToSubscribeInDateEvent;
  const factory AcademyEvent.getAcademyReview({required int academyId}) =
      _GetAcademyReviewEvent;
  const factory AcademyEvent.inrollUserInCourse(
      {required InrollUserInCourseParams params}) = _InrollUserInCourseEvent;
  const factory AcademyEvent.addAcademyReview(
      {required AddAcademyReviewParams params}) = _AddAcademyReviewEvent;
}
