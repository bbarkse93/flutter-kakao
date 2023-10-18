import 'package:flutter/cupertino.dart';

class Tab {
  final IconData icon;
  final String text;

  Tab({
    required this.icon,
    required this.text,
  });
}

List<Tab> tabList = [
  Tab(icon: CupertinoIcons.envelope_fill, text: "메일"),
  Tab(icon: CupertinoIcons.calendar, text: "캘린더"),
  Tab(icon: CupertinoIcons.archivebox_fill, text: "서랍"),
  Tab(icon: CupertinoIcons.gift_fill, text: "선물하기"),
  Tab(icon: CupertinoIcons.smiley_fill, text: "이모티콘"),
  Tab(icon: CupertinoIcons.shopping_cart, text: "쇼핑하기"),
  Tab(icon: CupertinoIcons.umbrella_fill, text: "스타일"),
];
