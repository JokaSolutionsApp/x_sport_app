import 'package:equatable/equatable.dart';

class ChatEnity extends Equatable {
  final String message;
  final bool isUserMessage;
  const ChatEnity({required this.message, required this.isUserMessage});
  @override
  List<Object?> get props => [message, isUserMessage];
}
