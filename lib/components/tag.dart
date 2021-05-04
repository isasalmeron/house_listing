import 'package:flutter/material.dart';

class Tag extends StatelessWidget {
  final String text;

  Tag({
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[300],
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24, 8, 24, 8),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.grey.shade800,
            fontSize: 12,
            fontWeight: FontWeight.bold,
            letterSpacing: 0.4,
          ),
        ),
      ),
    );
  }
}
