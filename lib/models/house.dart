import 'package:flutter/material.dart';

import 'package:house_listing/models/address.dart';

class House extends ChangeNotifier {
  final String houseType;
  final String businessType;
  final double amount;
  final int bedrooms;
  final int footage;
  final Address address;
  final String thumbnail;
  bool isFavorited;

  House({
    this.houseType,
    this.businessType,
    this.amount,
    this.bedrooms,
    this.footage,
    this.address,
    this.thumbnail,
    this.isFavorited,
  });

  updateIsFavorited(House house) {
    house.isFavorited = !house.isFavorited;

    notifyListeners();
  }
}