part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState.userMessage({
    @Default(<ChatEnity>[]) List<ChatEnity> messages,
    String? failure,
  }) = _UserMessge;
  const factory ChatState.botMessage({
    @Default(<ChatEnity>[]) List<ChatEnity> messages,
    String? failure,
  }) = _BotMessage;
}
