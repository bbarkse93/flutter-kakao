import 'package:flutter/material.dart';
import 'package:kakao_app/components/my_profile.dart';
import 'package:kakao_app/components/profile_card.dart';
import 'package:kakao_app/models/user.dart';

class FriendPage extends StatelessWidget {
  const FriendPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("친구")),
      body: Column(
        children: [
          SizedBox(height: 10),
          MyProfile(),
          Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: Row(
              children: [Text("친구"), SizedBox(width: 6), Text("${friends.length}")],
            ),
          ),
          Expanded(
            child: ListView(
              children: List.generate(
                friends.length,
                (index) => ProfileCard(user: friends[index]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
