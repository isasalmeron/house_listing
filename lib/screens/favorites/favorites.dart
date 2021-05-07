import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:house_listing/models/houses.dart';
import 'package:house_listing/components/app_bar.dart';
import 'package:house_listing/components/empty_state.dart';
import 'package:house_listing/components/house_card/house_card.dart';
import 'package:house_listing/components/buttons/primary_button.dart';
import 'package:house_listing/screens/favorites/messages.dart';

class Favorites extends StatelessWidget {
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
              onPressed: () {
                Navigator.pushNamed(context, '/cadastrar');
              },
            ),
          ],
          title: appBarTitle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Consumer<Houses>(builder: (context, houses, child) {
          final _numberOfHouses = houses.houses.length;

          if (_numberOfHouses >= 1) {
            final _favoritedHouses =
                houses.houses.where((house) => house.isFavorited).toList();
            final _numberOfFavoritedHouses = _favoritedHouses.length;

            if (_numberOfFavoritedHouses >= 1) {
              final _lastFavorited = _favoritedHouses.reversed;

              return ListView(
                children: _lastFavorited
                    .map((house) => HouseCard(
                          house: house,
                          hasFavoritedIcon: false,
                        ))
                    .toList(),
              );
            }
          }

          return EmptyState(
            icon: Icons.sentiment_dissatisfied_sharp,
            message: emptyStateMessage,
            button: PrimaryButton(
              icon: Icons.remove_red_eye,
              text: emptyStateButtonMessage,
              onPressed: () => Navigator.of(context).pop(),
            ),
          );
        }),
      ),
    );
  }
}
