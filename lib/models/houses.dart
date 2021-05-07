import 'package:flutter/material.dart';

import 'package:house_listing/models/house.dart';

class Houses extends ChangeNotifier {
  final List<House> _houses = [];

  List<House> get houses => _houses;

  addNewHouse(House newHouse) {
    _houses.add(newHouse);

    notifyListeners();
  }
}
