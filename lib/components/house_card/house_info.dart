import 'package:flutter/material.dart';
import 'package:house_listing/components/icon.dart';

import 'package:house_listing/components/typography/label.dart';

class HouseInfo extends StatelessWidget {
  final int footage;
  final int bedrooms;

  HouseInfo({
    this.footage,
    this.bedrooms,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 32, 0),
          child: Row(
            children: [
              CustomIcon(icon: Icons.square_foot_rounded),
              Label(text: '$footage m²'),
            ],
          ),
        ),
        CustomIcon(icon: Icons.king_bed),
        Label(text: _getBedroomsMessage(bedrooms)),
      ],
    );
  }

  _getBedroomsMessage(bedrooms) {
    return bedrooms > 1 ? '$bedrooms quartos' : '$bedrooms quarto';
  }
}
