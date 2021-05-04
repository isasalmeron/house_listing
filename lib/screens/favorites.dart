import 'package:flutter/material.dart';

import 'package:house_listing/components/app_bar.dart';

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
              tooltip: 'Cadastrar um novo imóvel',
              onPressed: () {
                Navigator.pushNamed(context, '/cadastrar');
              },
            ),
          ],
          title: 'Favoritos',
        ),
      ),
      body: ListView(children: <Widget>[
        Center(
          child: Column(
            children: <Widget>[
              Text(
                'Os imóveis favoritados vão aparecer aqui',
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
