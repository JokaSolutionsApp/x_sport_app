import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'social_bloc.freezed.dart';
part 'social_event.dart';
part 'social_state.dart';

class SocialBloc extends Bloc<SocialEvent, SocialState> {
  SocialBloc() : super(_Initial()) {
    on<SocialEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
