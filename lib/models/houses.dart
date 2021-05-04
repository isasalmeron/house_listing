import 'package:flutter/material.dart';
import 'package:house_listing/models/address.dart';

import 'package:house_listing/models/house.dart';

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

class Houses extends ChangeNotifier {
  final List<House> _houses = [house, house2];

  List<House> get houses => _houses;

  adicionar(House newHouse) {
    houses.add(newHouse);

    notifyListeners();
  }
}