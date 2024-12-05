import 'package:flutter/material.dart';
import 'package:navigation_codelab/screens/card_gift.dart';
import 'package:navigation_codelab/screens/close_card.dart';
import 'package:navigation_codelab/screens/input_card.dart';
import 'screens/first_screen.dart';
import 'screens/input_screen.dart';
import 'screens/second_screen.dart';
import 'screens/third_screen.dart';
import 'screens/profile_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navigasi Lanjutan',
      initialRoute: '/screen1', // Menetapkan rute awal
      routes: {
        '/screen1': (context) => FirstScreen(),
        '/screen2': (context) => SecondScreen(),
        '/screen3': (context) => ThirdScreen(),
        '/profile': (context) => ProfileScreen(),
        '/inputcard': (context) => InputCard(),
        '/cardgift': (context) => CardGift(),
        '/closecard': (context) => CloseCard(),
        '/input': (context) => InputScreen(),
      },
    );
  }
}
