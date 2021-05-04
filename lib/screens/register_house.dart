import 'package:flutter/material.dart';

import 'package:house_listing/components/app_bar.dart';
import 'package:house_listing/components/typography/body.dart';
import 'package:house_listing/components/typography/title.dart';

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
        child: ListView(children: <Widget>[
          CustomTitle(text: 'Qual o tipo do imóvel?'),
          RadioButton(),
          ElevatedButton(
            child: Text('Concluir'),
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
            ),
            onPressed: () {
            },
          ),
        ]),
      ),
    );
  }
}

enum HouseType { casa, apartamento }

class RadioButton extends StatefulWidget {
  const RadioButton({key}) : super(key: key);

  @override
  _RadioButtonState createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  HouseType _character = HouseType.casa;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Row(
          children: [
            Radio<HouseType>(
              value: HouseType.casa,
              groupValue: _character,
              onChanged: (HouseType value) {
                setState(() {
                  _character = value;
                });
              },
            ),
            Body(text: 'Casa'),
          ],
        ),
        Row(
          children: [
            Radio<HouseType>(
              value: HouseType.apartamento,
              groupValue: _character,
              onChanged: (HouseType value) {
                setState(() {
                  _character = value;
                });
              },
            ),
            Body(text: 'Apartamento'),
          ],
        ),
      ],
    );
  }
}
