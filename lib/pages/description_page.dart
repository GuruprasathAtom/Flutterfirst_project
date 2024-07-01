import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_th/class/item_class.dart';
import 'package:flutter_th/core/consts.dart';

class DescriptionPage extends StatefulWidget {
  const DescriptionPage({super.key, required this.box});
  final ItemClass box;

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  double fontSizecustom = 25;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.box.title),
        actions: [
          IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Guru'),
                    behavior: SnackBarBehavior.floating,
                  ),
                );
                print('Gowsika');
              },
              icon: const Icon(Icons.info_outline))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(kDouble10),
          child: Column(
            children: [
              Image.asset(widget.box.imagepath),
              Wrap(
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        fontSizecustom = 15;
                      });
                    },
                    child: const Text('Small title'),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      setState(() {
                        fontSizecustom = 70;
                      });
                    },
                    child: const Text('Medium title'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        fontSizecustom = 100;
                      });
                    },
                    child: const Text('Large title'),
                  ),
                  FilledButton(
                    onPressed: () {
                      setState(() {
                        fontSizecustom = 200;
                      });
                    },
                    child: const Text('Huge title'),
                  ),
                ],
              ),
              FittedBox(
                child: Text(
                  widget.box.title,
                  style: TextStyle(
                      fontSize: fontSizecustom, fontWeight: FontWeight.bold),
                ),
              ),
              const Text(
                baconipsum,
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: kDouble10),
              const Text(
                baconipsum,
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
