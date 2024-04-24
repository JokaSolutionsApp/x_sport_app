part of 'archive_bloc.dart';

@freezed
class ArchiveState with _$ArchiveState {
  const factory ArchiveState.initial() = _Initial;

  // Get Academy Subscription Archive
  const factory ArchiveState.getAcademySubscriptionArchiveLoading() =
      _GetAcademySubscriptionArchiveLoading;
  const factory ArchiveState.getAcademySubscriptionArchiveFailure({
    @Default(null) Failure? failure,
  }) = _GetAcademySubscriptionArchiveFailure;
  const factory ArchiveState.academySubscriptionArchiveFetched({
    @Default([]) List<AcademySubscriptionArchive> academySubscriptionArchive,
  }) = _AcademySubscriptionArchiveFetched;
}
