import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kakao_app/components/profile_icon_button.dart';
import 'package:kakao_app/components/round_icon_button.dart';
import 'package:kakao_app/models/user.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key, required this.user});
  final User user;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(user.backgroundImage),
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
                  image: NetworkImage(user.backgroundImage),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 8),
            Text(
              user.name,
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            SizedBox(height: 5),
            Text(
              user.intro,
              style: TextStyle(fontSize: 15, color: Colors.white),
              maxLines: 1,
            ),
            SizedBox(height: 20),
            Divider(color: Colors.white),
            _buildFriendIcon()
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
            RoundIconButton(icon: CupertinoIcons.gift_fill),
            SizedBox(width: 15),
            RoundIconButton(icon: CupertinoIcons.gear_alt_fill),
            SizedBox(width: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildFriendIcon() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ProfileIconButton(
            icon: CupertinoIcons.chat_bubble,
            text: "1:1채팅",
          ),
          SizedBox(width: 50),
          ProfileIconButton(
            icon: CupertinoIcons.phone,
            text: "통화하기",
          ),
        ],
      ),
    );
  }
}
