import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:house_listing/components/typography/body.dart';
import 'package:house_listing/components/typography/title.dart';
import 'package:provider/provider.dart';

import 'package:house_listing/models/houses.dart';
import 'package:house_listing/models/house.dart';
import 'package:house_listing/models/address.dart';
import 'package:house_listing/components/app_bar.dart';
import 'package:house_listing/screens/register_house/messages.dart';

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
);

class RegisterHouse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(55),
        child: CustomAppBar(
          icons: [],
          title: appBarTitle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: ListView(
          children: [
            Form(),
            ElevatedButton(
              child: Text(buttonMessage),
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

//ENUMS
//House type
enum HouseType { Casa, Apartamento }

extension HouseTypeLiteral on HouseType {
  String get value => describeEnum(this);
}

//Business Type
enum BusinessType { Aluguel, Venda }

extension BusinessTypeLiteral on BusinessType {
  String get value => describeEnum(this);
}


class Form extends StatefulWidget {
  const Form({key}) : super(key: key);

  @override
  _FormState createState() => _FormState();
}

class _FormState extends State<Form> {
  HouseType _houseType = HouseType.Casa;
  BusinessType _businessType = BusinessType.Aluguel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Título da pergunta
        Row(
          children: [
            CustomTitle(text: 'Qual o tipo do imóvel?'),
          ],
        ),
        //Opções
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              children: [
                Radio<HouseType>(
                  value: HouseType.Casa,
                  groupValue: _houseType,
                  onChanged: (HouseType value) {
                    setState(() {
                      _houseType = value;
                    });
                  },
                ),
                Body(text: 'Casa'),
              ],
            ),
            Row(
              children: [
                Radio<HouseType>(
                  value: HouseType.Apartamento,
                  groupValue: _houseType,
                  onChanged: (HouseType value) {
                    setState(() {
                      _houseType = value;
                    });
                  },
                ),
                Body(text: 'Apartamento'),
              ],
            ),
          ],
        ),
        //Título da pergunta
        Row(
          children: [
            CustomTitle(text: 'Qual o tipo de negócio?'),
          ],
        ),
        //Opções
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              children: [
                Radio<BusinessType>(
                  value: BusinessType.Aluguel,
                  groupValue: _businessType,
                  onChanged: (BusinessType value) {
                    setState(() {
                      _businessType = value;
                    });
                  },
                ),
                Body(text: 'Aluguel'),
              ],
            ),
            Row(
              children: [
                Radio<BusinessType>(
                  value: BusinessType.Venda,
                  groupValue: _businessType,
                  onChanged: (BusinessType value) {
                    setState(() {
                      _businessType = value;
                    });
                  },
                ),
                Body(text: 'Venda'),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
