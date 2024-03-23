part of 'academy_bloc.dart';

@freezed
class AcademyEvent with _$AcademyEvent {
  const factory AcademyEvent.getSportsMembership() = _GetSportsMembershipEvent;
  const factory AcademyEvent.getSuggestedAcademies(
      {required SuggestedAcademyParams params}) = _GetSuggestedAcademiesEvent;
  const factory AcademyEvent.getAboutAcademy({required int academyId}) =
      _GetAboutAcademyEvent;
  const factory AcademyEvent.getAcademyCourses({required int academyId}) =
      _GetAcademyCoursesEvent;
  const factory AcademyEvent.getAcademyCoursesInDate(
      {required int academyId,
      required String targetDate}) = _GetAcademyCoursesInDateEvent;
  const factory AcademyEvent.getAcademyReview({required int academyId}) =
      _GetAcademyReviewEvent;
}
