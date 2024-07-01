import 'package:flutter/material.dart';
import 'package:flutter_th/class/item_class.dart';
import 'package:flutter_th/core/consts.dart';
import 'package:flutter_th/pages/description_page.dart';

class CardWiget extends StatelessWidget {
  const CardWiget({super.key, required this.box});
  final ItemClass box;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return DescriptionPage(
                box: box,
              );
            },
          ),
        );
      },
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(height: kDouble5),
              Image.asset(box.imagepath),
              Text(
                box.title,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('This is a ${box.title} Description'),
              const SizedBox(height: kDouble10),
            ],
          ),
        ),
      ),
    );
  }
}
