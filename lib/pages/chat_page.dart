import 'package:flutter/material.dart';
import 'package:kakao_app/components/chat_card.dart';
import 'package:kakao_app/models/chat.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("채팅"),
      ),
      body: ListView(
        children: List.generate(
          chatList.length,
          (index) => ChatCard(
            chat: chatList[index],
          ),
        ),
      ),
    );
  }
}
