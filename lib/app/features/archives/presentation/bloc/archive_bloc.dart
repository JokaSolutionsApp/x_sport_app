import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:x_sport/app/features/archives/domain/enitites/academy_subscription_archive_entity.dart';
import 'package:x_sport/app/features/archives/domain/usecase/get_academy_subscription_archive_usecase.dart';
import '../../../../../core/error/failure.dart';
part 'archive_event.dart';
part 'archive_state.dart';
part 'archive_bloc.freezed.dart';

@singleton
class ArchiveBloc extends Bloc<ArchiveEvent, ArchiveState> {
  final GetAcademySupscriptionArchiveUseCase
      getAcademySupscriptionArchiveUseCase;

  ArchiveBloc(
    this.getAcademySupscriptionArchiveUseCase,
  ) : super(const ArchiveState.initial()) {
    on<ArchiveEvent>((event, emit) async {
      await event.map(
        getAcademySupscriptionArchive: (event) async =>
            await getAcademySupscriptionArchive(event, emit),
      );
    });
  }

  Future<void> getAcademySupscriptionArchive(
      event, Emitter<ArchiveState> emit) async {
    print('bloc _getSuggestedAcademies');

    emit(const ArchiveState.getAcademySubscriptionArchiveLoading());
    final result = await getAcademySupscriptionArchiveUseCase();
    result.fold((f) {
      emit(ArchiveState.getAcademySubscriptionArchiveFailure(failure: f));
    }, (r) {
      print('bloc _getSuggestedAcademies $r');

      emit(ArchiveState.academySubscriptionArchiveFetched(
          academySubscriptionArchive: r));
    });
  }
}
