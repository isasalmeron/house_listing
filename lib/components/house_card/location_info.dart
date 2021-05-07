import 'package:flutter/material.dart';

import 'package:house_listing/components/icon.dart';
import 'package:house_listing/components/typography/body.dart';

class LocationInfo extends StatelessWidget {
  final String street;
  final String neighborhood;
  final String city;

  LocationInfo({
    this.street,
    this.neighborhood,
    this.city,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomIcon(icon: Icons.pin_drop,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Body(
              text: street,
              bold: true,
            ),
            Body(text: '$neighborhood, $city'),
          ],
        ),
      ],
    );
  }
}
