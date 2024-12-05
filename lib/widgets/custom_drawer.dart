// lib/widgets/custom_drawer.dart
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Home'),
            onTap: () {
              Navigator.pushNamed(context, '/home');
            },
          ),
          ListTile(
            title: Text('Profile'),
            onTap: () {
              Navigator.pushNamed(context, '/profile');
            },
          ),
          ListTile(
            title: Text('Settings'),
            onTap: () {
              Navigator.pushNamed(context, '/settings');
            },
          ),
        ],
      ),
    );
  }
}

