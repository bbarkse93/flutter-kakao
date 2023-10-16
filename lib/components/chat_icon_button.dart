import 'package:flutter/material.dart';

class ChatIconButton extends StatelessWidget {
  const ChatIconButton({
    super.key,
    required this.icon,
  });
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: icon,
      padding: EdgeInsets.symmetric(horizontal: 15),
      iconSize: 25,
      onPressed: () {},
    );
  }
}
