import 'package:flutter/material.dart';
import 'package:kakao_app/model/user.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({Key? key, required this.user}) : super(key: key);
  final User user;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 20,
        backgroundImage: NetworkImage(user.backgroundImage),
      ),
      title: Text(
        user.name,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        user.intro,
        style: TextStyle(fontSize: 12),
      ),
    );
  }
}
