part of 'archive_bloc.dart';

@freezed
class ArchiveEvent with _$ArchiveEvent {
  const factory ArchiveEvent.getAcademySupscriptionArchive() =
      _GetAcademyCoursesEvent;
}
