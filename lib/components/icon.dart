import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final IconData icon;

  CustomIcon({
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
      child: Icon(
        icon,
        color: Colors.purple,
      ),
    );
  }
}
