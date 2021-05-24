import 'package:flutter/material.dart';

import 'package:house_listing/models/house.dart';

class Houses extends ChangeNotifier {
  final List<House> _houses = [];

  List<House> get houses => _houses;

  addNewHouse(House newHouse) {
    newHouse.id = DateTime.now().millisecondsSinceEpoch;
    _houses.add(newHouse);

    notifyListeners();
  }

  updateIsFavorited(int houseId) {
    final int index = _houses.indexWhere((house) => house.id == houseId);
    _houses[index].isFavorited = !_houses[index].isFavorited;

    notifyListeners();
  }
}
