import 'package:flutter/material.dart';

import 'package:house_listing/components/icon.dart';

class Footer extends StatelessWidget {
  final double amount;
  final bool isFavorited;

  Footer({
    this.amount,
    this.isFavorited,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: [
            CustomIcon(icon: Icons.monetization_on_outlined),
            Text(
              _formatAmount(amount),
              style: TextStyle(
                color: Colors.green.shade700,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        IconButton(
          icon: Icon(isFavorited ? Icons.favorite : Icons.favorite_border),
          tooltip: 'Favoritar',
          onPressed: () {
            Navigator.pushNamed(context, '/favoritos');
          },
          color: Colors.purple,
        ),
      ],
    );
  }

  _formatAmount(amount) {
    return 'R\$ ' + amount.toStringAsFixed(2);
  }
}
