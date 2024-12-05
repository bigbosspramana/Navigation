// lib/screens/profile_screen.dart
import 'package:flutter/material.dart';
import 'package:navigation_codelab/widgets/custom_drawer.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      drawer: CustomDrawer(),  // Menambahkan drawer
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/settings');
          },
          child: Text('Pergi ke Settings'),
        ),
      ),
    );
  }
}
