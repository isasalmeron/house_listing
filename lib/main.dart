import 'package:flutter/material.dart';
import 'package:house_listing/models/house.dart';
import 'package:house_listing/models/houses.dart';

import 'package:house_listing/screens/favorites/favorites.dart';
import 'package:house_listing/screens/home_page/home_page.dart';
import 'package:house_listing/screens/register_house/register_house.dart';
import 'package:house_listing/screens/register_house/teste.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(HouseListingApp());
}

class HouseListingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Houses()),
        ChangeNotifierProvider(create: (context) => House()),
      ],
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => HomePage(),
          '/favoritos': (context) => Favorites(),
          // '/cadastrar': (context) => RegisterHouse(),
          '/cadastrar': (context) => TextFieldDemo(),
        },
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
      ),
    );
  }
}
