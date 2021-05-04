import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final List<Widget> icons;
  final String title;

  CustomAppBar({
    this.icons,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(fontSize: 24),
      ),
      actions: icons,
    );
  }
}
