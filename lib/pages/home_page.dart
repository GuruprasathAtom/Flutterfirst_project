import 'package:flutter/material.dart';
import 'package:flutter_th/class/item_class.dart';
import 'package:flutter_th/widget/card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter map'),
      ),
      // ignore: prefer_const_constructors
      body: SingleChildScrollView(
        child: Column(
          children: [
            CardWiget(
              box: ItemClass(title: 'Rocket', imagepath: 'images/rocket.png'),
            ),
            Row(
              children: [
                Expanded(
                  child: CardWiget(
                      box: ItemClass(
                          title: 'Space', imagepath: 'images/space.png')),
                ),
                Expanded(
                  child: CardWiget(
                      box: ItemClass(
                          title: 'travel', imagepath: 'images/travel.png')),
                ),
              ],
            ),
            CardWiget(
                box: ItemClass(title: 'yeah', imagepath: 'images/yeah.png')),
          ],
        ),
      ),
    );
  }
}

class Rocket {}
