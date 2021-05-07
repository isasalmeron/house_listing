import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final Function onPressed;

  PrimaryButton({
    this.icon,
    this.text,
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: Icon(icon, size: 18),
      label: Text(text),
      onPressed: onPressed,
    );
  }
}
