import 'package:flutter/material.dart';
import 'package:flutter_th/core/notifier.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: const Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('images/yeah.png'),
            radius: 60,
          ),
          ListTile(
            leading: Icon(Icons.map),
            title: Text('Flutter Map'),
          ),
          ListTile(
            leading: Icon(Icons.mail),
            title: Text('gguruprasath2001@gmail.com'),
          ),
          ListTile(
            leading: Icon(Icons.web),
            title: Text('Flutterweb.com'),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          isDrakModeNotifier.value = !isDrakModeNotifier.value;
        },
        child: const Icon(Icons.dark_mode),
      ),
    );
  }
}
