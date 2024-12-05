// lib/screens/home_screen.dart
import 'package:flutter/material.dart';
import 'package:navigation_codelab/widgets/custom_drawer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      drawer: CustomDrawer(),  // Menambahkan drawer
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/profile');
          },
          child: Text('Pergi ke Profile'),
        ),
      ),
    );
  }
}
