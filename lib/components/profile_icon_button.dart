import 'package:flutter/material.dart';

class ProfileIconButton extends StatelessWidget {
  final IconData icon;
  final String text;
  const ProfileIconButton({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 25,
          color: Colors.white,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 12,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
