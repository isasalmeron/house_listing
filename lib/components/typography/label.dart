import 'package:flutter/material.dart';

class Label extends StatelessWidget {
  final String text;

  Label({
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.grey.shade700,
        fontSize: 14,
        letterSpacing: 0.8,
      ),
    );
  }
}
