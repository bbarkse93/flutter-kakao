import 'package:flutter/material.dart';
import 'package:kakao_app/models/tab.dart';

class MorePage extends StatelessWidget {
  const MorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("더보기"),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 30),
        child: GridView.count(
          crossAxisCount: 4,
          children: List.generate(
            tabList.length,
            (index) => Column(
              children: [
                Icon(tabList[index].icon),
                SizedBox(height: 5),
                Text(tabList[index].text),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
