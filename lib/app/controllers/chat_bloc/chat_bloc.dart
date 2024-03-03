import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:x_sport/core/services/locator/service_locator.dart';
import 'package:x_sport/app/features/auth/domain/enitites/chat_entity.dart';
import 'package:x_sport/app/features/auth/domain/usecase/chat_uscases/send_message_usecase.dart';
part 'chat_bloc.freezed.dart';
part 'chat_event.dart';
part 'chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  List<ChatEnity> messages = [];

  ChatBloc() : super(const _UserMessge()) {
    on<ChatEvent>(_onSendMessage);
  }

  Future<void> _onSendMessage(ChatEvent event, Emitter<ChatState> emit) async {
    if (event.userMessage.isNotEmpty) {
      addMessage(
        event.userMessage,
        true,
      );
      emit(_UserMessge(messages: messages));
      final result = await sl<SendMessageUseCase>().call(event.userMessage);
      result.fold((l) => emit(_BotMessage(failure: l.statusCode.toString())),
          (r) {
        addMessage(r);
        emit(_BotMessage(messages: messages));
      });
    }
  }

  void addMessage(String message, [bool isUserMessage = false]) {
    messages.add(
      ChatEnity(message: message, isUserMessage: isUserMessage),
    );
  }
}
