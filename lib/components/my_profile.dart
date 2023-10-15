import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 20,
        backgroundImage: AssetImage("assets/profile.jpg"),
      ),
      title: Text(
        "박세환",
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        "이 또한 지나가리라",
        style: TextStyle(fontSize: 12),
      ),
    );
  }
}
