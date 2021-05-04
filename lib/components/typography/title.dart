import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  final String text;
  final double fontSize;

  CustomTitle({
    this.text,
    this.fontSize = 20,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.grey.shade800,
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
        letterSpacing: 0.8,
      ),
    );
  }
}
