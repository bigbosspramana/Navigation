import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/settings_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigasi Lanjutan',
      initialRoute: '/home',  // Menetapkan rute awal
      routes: {
        '/home': (context) => HomeScreen(),
        '/profile': (context) => ProfileScreen(),
        '/settings': (context) => SettingsScreen(),
      },
    );
  }
}
