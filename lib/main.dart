import 'package:flutter/material.dart';

import 'package:house_listing/screens/favorites.dart';
import 'package:house_listing/screens/home_page.dart';
import 'package:house_listing/screens/register_house.dart';

void main() {
  runApp(HouseListingApp());
}

class HouseListingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/favoritos': (context) => Favorites(),
        '/cadastrar': (context) => RegisterHouse(),
      },
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
    );
  }
}

