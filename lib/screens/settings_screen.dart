// lib/screens/settings_screen.dart
import 'package:flutter/material.dart';
import 'package:navigation_codelab/widgets/custom_drawer.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings')),
      drawer: CustomDrawer(),  // Menambahkan drawer
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);  // Kembali ke Home
          },
          child: Text('Kembali ke Home'),
        ),
      ),
    );
  }
}
