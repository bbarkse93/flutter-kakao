import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kakao_app/components/profile_icon_button.dart';
import 'package:kakao_app/components/round_icon_button.dart';

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/profile.jpg"),
          fit: BoxFit.fitHeight,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Spacer(),
            Container(
              width: 110,
              height: 110,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/profile.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 8),
            Text(
              "박세환",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            SizedBox(height: 5),
            Text(
              "이 또한 지나가리라",
              style: TextStyle(fontSize: 15, color: Colors.white),
              maxLines: 1,
            ),
            SizedBox(height: 20),
            Divider(color: Colors.white),
            _buildMyIcon()
          ],
        ),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: Icon(
              CupertinoIcons.xmark_circle,
              size: 30,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            SizedBox(width: 15),
            RoundIconButton(icon: CupertinoIcons.gear_alt_fill),
            SizedBox(width: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildMyIcon() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ProfileIconButton(
            icon: CupertinoIcons.chat_bubble,
            text: "나와의 채팅",
          ),
          SizedBox(width: 50),
          ProfileIconButton(
            icon: CupertinoIcons.pen,
            text: "프로필 편집",
          ),
        ],
      ),
    );
  }
}
