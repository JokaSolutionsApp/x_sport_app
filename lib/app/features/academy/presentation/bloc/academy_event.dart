part of 'academy_bloc.dart';

@freezed
class AcademyEvent with _$AcademyEvent {
  const factory AcademyEvent.getSportsMembership() = _GetSportsMembershipEvent;
  const factory AcademyEvent.getSuggestedAcademies() =
      _GetSuggestedAcademiesEvent;
  const factory AcademyEvent.getAboutAcademy() = _GetAboutAcademyEvent;
  const factory AcademyEvent.getAcademyCourses() = _GetAcademyCoursesEvent;
  const factory AcademyEvent.getAcademyCoursesInDate() =
      _GetAcademyCoursesInDateEvent;
  const factory AcademyEvent.getAcademyReview() = _GetAcademyReviewEvent;
}
