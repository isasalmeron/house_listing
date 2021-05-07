import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:house_listing/models/houses.dart';
import 'package:house_listing/models/house.dart';
import 'package:house_listing/models/address.dart';
import 'package:house_listing/components/app_bar.dart';

final house2 = House(
  houseType: 'Casa',
  businessType: 'Venda',
  amount: 145750,
  bedrooms: 3,
  footage: 150,
  address: Address(
    street: 'Av. Duque de Caxias',
    neighborhood: 'Santana',
    city: 'São Paulo',
  ),
  thumbnail:
      'https://blog.friasneto.com.br/wp-content/uploads/2020/07/piracicaba-casa-condominio-residencial-terras-de-artemis-artemis-23-11-2019_11-02-08-0-750x410.jpg',
  isFavorited: false,
);

final house = House(
  houseType: 'Apartamento',
  businessType: 'Aluguel',
  amount: 1457,
  bedrooms: 1,
  footage: 70,
  address: Address(
    street: 'Av. Consolação',
    neighborhood: 'Consolação',
    city: 'São Paulo',
  ),
  thumbnail:
      'https://www.tuacasa.com.br/wp-content/uploads/2019/02/casa-em-l-2.jpg',
  isFavorited: false,
);

class RegisterHouse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(55),
        child: CustomAppBar(
          icons: [],
          title: 'Novo imóvel',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: ListView(
          children: [
            // CustomTitle(text: 'Qual o tipo do imóvel?'),
            // RadioButton(),
            ElevatedButton(
              child: Text('Concluir'),
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
              ),
              onPressed: () {
                context.read<Houses>().addNewHouse(house2);
                context.read<Houses>().addNewHouse(house);
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}

// enum HouseType { casa, apartamento }

// class RadioButton extends StatefulWidget {
//   const RadioButton({key}) : super(key: key);

//   @override
//   _RadioButtonState createState() => _RadioButtonState();
// }

// class _RadioButtonState extends State<RadioButton> {
//   HouseType _character = HouseType.casa;

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: <Widget>[
//         Row(
//           children: [
//             Radio<HouseType>(
//               value: HouseType.casa,
//               groupValue: _character,
//               onChanged: (HouseType value) {
//                 setState(() {
//                   _character = value;
//                 });
//               },
//             ),
//             Body(text: 'Casa'),
//           ],
//         ),
//         Row(
//           children: [
//             Radio<HouseType>(
//               value: HouseType.apartamento,
//               groupValue: _character,
//               onChanged: (HouseType value) {
//                 setState(() {
//                   _character = value;
//                 });
//               },
//             ),
//             Body(text: 'Apartamento'),
//           ],
//         ),
//       ],
//     );
//   }
// }
