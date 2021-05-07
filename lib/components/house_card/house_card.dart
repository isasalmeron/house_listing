import 'package:flutter/material.dart';

import 'package:house_listing/models/house.dart';
import 'package:house_listing/components/house_card/footer.dart';
import 'package:house_listing/components/house_card/house_info.dart';
import 'package:house_listing/components/house_card/location_info.dart';
import 'package:house_listing/components/tag.dart';

class HouseCard extends StatelessWidget {
  final House house;
  final bool hasFavoritedIcon;

  HouseCard({
    this.house,
    this.hasFavoritedIcon = true,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      margin: EdgeInsets.fromLTRB(0, 0, 0, 16),
      elevation: 5,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.grey, width: 0.5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Image.network(
              house.thumbnail,
              width: 400,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 24, 0, 16),
              child: Row(
                children: [
                  Tag(text: house.houseType),
                  Tag(text: house.businessType),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
              child: LocationInfo(
                street: house.address.street,
                neighborhood: house.address.neighborhood,
                city: house.address.city,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 16),
              child: HouseInfo(
                footage: house.footage,
                bedrooms: house.bedrooms,
              ),
            ),
            Footer(
              house: house,
              hasFavoriteIcon: hasFavoritedIcon,
            ),
          ],
        ),
      ),
    );
  }
}
