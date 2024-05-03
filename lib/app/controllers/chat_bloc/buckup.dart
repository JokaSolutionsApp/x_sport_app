// class ChatEvent extends Equatable {
//   const ChatEvent();

//   @override
//   List<Object> get props => [];
// }

// class SendMessageEvent extends ChatEvent {
//   final String userMessage;

//   const SendMessageEvent({required this.userMessage});

//   @override
//   List<Object> get props => [userMessage];
// }


// class ChatState extends Equatable {
//   final List<ChatEnity> messages;
//   final RequestState chatState;
//   final String error;
//   const ChatState({
//     this.messages = const [],
//     this.chatState = RequestState.initial,
//     this.error = '',
//   });

//   ChatState copyWith({
//     List<ChatEnity>? messages,
//     RequestState? state,
//     String? error,
//   }) {
//     return ChatState(
//       messages: messages ?? this.messages,
//       chatState: state ?? chatState,
//       error: error ?? this.error,
//     );
//   }

//   @override
//   List<Object> get props => [messages, chatState, error];
// }