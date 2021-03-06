import 'package:flutter/material.dart';

import 'package:house_listing/models/house.dart';
import 'package:house_listing/components/icon.dart';
import 'package:house_listing/models/houses.dart';
import 'package:house_listing/screens/home_page/messages.dart';
import 'package:provider/provider.dart';

class Footer extends StatelessWidget {
  final House house;
  final bool hasFavoriteIcon;

  Footer({
    this.house,
    this.hasFavoriteIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CustomIcon(icon: Icons.monetization_on_outlined),
            Text(
              _formatAmount(house.amount),
              style: TextStyle(
                color: Colors.green.shade700,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        hasFavoriteIcon
            ? IconButton(
                icon: Icon(
                    house.isFavorited ? Icons.favorite : Icons.favorite_border),
                tooltip: favoriteButtonTooltip,
                onPressed: () {
                  context.read<Houses>().updateIsFavorited(house.id);
                },
                color: Colors.purple,
              )
            : Column(),
      ],
    );
  }

  _formatAmount(amount) {
    return 'R\$ ' + amount.toStringAsFixed(2);
  }
}
