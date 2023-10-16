import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:kakao_app/components/chat_icon_button.dart';
import 'package:kakao_app/components/my_chat.dart';
import 'package:kakao_app/components/other_chat.dart';
import 'package:kakao_app/components/time_line.dart';

class ChatRoomPage extends StatefulWidget {
  const ChatRoomPage({super.key});

  @override
  State<ChatRoomPage> createState() => _ChatRoomPageState();
}

class _ChatRoomPageState extends State<ChatRoomPage> {
  final List<MyChat> chatList = [];
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFb2c7da),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text(
              "홍길동",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            actions: [
              Icon(CupertinoIcons.search, size: 20),
              SizedBox(width: 25),
              Icon(CupertinoIcons.bars, size: 20),
              SizedBox(width: 25),
            ],
          ),
          body: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      children: [
                        TimeLine(
                          time: "2021년 1월 1일 금요일",
                        ),
                        OtherChat(
                          name: "홍길동",
                          text: "새해 복 많이 받으세요.",
                          time: "오전 10:10",
                        ),
                        MyChat(
                          text: "선생님도 많이 받으십시오.",
                          time: "오후 2:15",
                        ),
                        ...List.generate(chatList.length, (index) => chatList[index]),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: 60,
                color: Colors.white,
                child: Row(
                  children: [
                    ChatIconButton(
                      icon: Icon(CupertinoIcons.plus_app),
                    ),
                    Expanded(
                      child: Container(
                        child: TextField(
                            controller: _textController,
                            maxLines: 1,
                            style: TextStyle(fontSize: 20),
                            decoration: InputDecoration(
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                            ),
                            onSubmitted: _handleSubmitted),
                      ),
                    ),
                    ChatIconButton(
                      icon: Icon(CupertinoIcons.smiley),
                    ),
                    ChatIconButton(
                      icon: Icon(CupertinoIcons.gear_alt_fill),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _handleSubmitted(text) {
    _textController.clear();

    return setState(
      () {
        chatList.add(
          MyChat(
            text: text,
            time: DateFormat("a K:m").format(DateTime.now()).replaceAll("AM", "오전").replaceAll("PM", "오후"),
          ),
        );
      },
    );
  }
}
