import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final String text;
  final bool bold;

  Body({
    this.text,
    this.bold = false,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.grey.shade800,
        fontSize: 16,
        fontWeight: bold ? FontWeight.bold : FontWeight.normal,
        letterSpacing: 0.8,
      ),
    );
  }
}
