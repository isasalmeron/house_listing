import 'package:flutter/material.dart';
import 'package:house_listing/models/house.dart';
import 'package:provider/provider.dart';

import 'package:house_listing/models/houses.dart';
import 'package:house_listing/components/app_bar.dart';
import 'package:house_listing/components/empty_state.dart';
import 'package:house_listing/components/house_card/house_card.dart';
import 'package:house_listing/components/buttons/primary_button.dart';
import 'package:house_listing/screens/home_page/messages.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(55),
        child: CustomAppBar(
          icons: [
            IconButton(
              icon: const Icon(Icons.add),
              tooltip: addHouseTooltip,
              onPressed: () => Navigator.pushNamed(context, '/cadastrar'),
            ),
            IconButton(
              tooltip: favoriteButtonTooltip,
              icon: const Icon(
                Icons.favorite,
              ),
              onPressed: () => Navigator.pushNamed(context, '/favoritos'),
            ),
          ],
          title: appBarTitle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Consumer<Houses>(builder: (context, houses, child) {
          final _numberOfHouses = houses.houses.length;

          if (_numberOfHouses < 1) {
            return EmptyState(
              icon: Icons.sentiment_dissatisfied_sharp,
              message: emptyStateMessage,
              button: PrimaryButton(
                icon: Icons.add,
                text: emptyStateButtonMessage,
                onPressed: () => Navigator.pushNamed(context, '/cadastrar'),
              ),
            );
          }

          final _lastHouses = houses.houses.reversed;

          return ListView(
            children:
                _lastHouses.map((house) => HouseCard(house: house)).toList(),
          );
        }),
      ),
    );
  }
}
