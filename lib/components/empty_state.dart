import 'package:flutter/material.dart';

import 'package:house_listing/components/icon.dart';
import 'package:house_listing/components/typography/body.dart';

class EmptyState extends StatelessWidget {
  final IconData icon;
  final String message;
  final Widget button;

  EmptyState({
    this.message,
    this.button,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomIcon(icon: icon),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 16, 0, 24),
          child: Body(text: message),
        ),
        Column(
          children: [button],
        ),
      ],
    );
  }
}
