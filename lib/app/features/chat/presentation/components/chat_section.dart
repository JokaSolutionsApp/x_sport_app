import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../presentation/controllers/chat_bloc/chat_bloc.dart';
import 'chat_messages.dart';

class ChatComponent extends StatefulWidget {
  const ChatComponent({Key? key}) : super(key: key);

  @override
  State<ChatComponent> createState() => _ChatComponentState();
}

class _ChatComponentState extends State<ChatComponent> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatBloc, ChatState>(
        buildWhen: (prev, cur) => prev != cur,
        builder: (context, state) {
          return state.when(
              userMessage: (messages, failure) =>
                  ChatMessagesComponent(messages: messages),
              botMessage: (messages, failure) =>
                  ChatMessagesComponent(messages: messages));
        });
  }
}
