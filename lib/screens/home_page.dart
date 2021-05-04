import 'package:flutter/material.dart';

import 'package:house_listing/components/app_bar.dart';
import 'package:house_listing/components/house_card/house_card.dart';
import 'package:house_listing/models/address.dart';
import 'package:house_listing/models/house.dart';

class HomePage extends StatelessWidget {
  final house = House(
    'Apartamento',
    'Alugar',
    1475,
    2,
    70,
    Address('Rua Voluntários da Pátria', 'Santana', 'São Paulo'),
    'https://www.tuacasa.com.br/wp-content/uploads/2019/02/casa-em-l-2.jpg',
    true,
  );
  final house2 = House(
    'Casa',
    'Venda',
    145750,
    3,
    150,
    Address('Av. Duque de Caxias', 'Santana', 'São Paulo'),
    'https://blog.friasneto.com.br/wp-content/uploads/2020/07/piracicaba-casa-condominio-residencial-terras-de-artemis-artemis-23-11-2019_11-02-08-0-750x410.jpg',
    false,
  );

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
            IconButton(
              tooltip: 'Favoritos',
              icon: const Icon(
                Icons.favorite,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/favoritos');
              },
            ),
          ],
          title: 'Imóveis',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: ListView(children: <Widget>[
          HouseCard(house: house),
          HouseCard(house: house2),
          HouseCard(house: house),
          HouseCard(house: house2),
          HouseCard(house: house),
        ]),
      ),
    );
  }
}
