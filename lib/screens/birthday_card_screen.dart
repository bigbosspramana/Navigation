import 'package:flutter/material.dart';

class BirthdayCardScreen extends StatelessWidget {
  final String name;
  final String age;

  BirthdayCardScreen({required this.name, required this.age});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kartu Ucapan Ulang Tahun'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '🎉 Selamat Ulang Tahun, $name! 🎉',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),
              Text(
                'Wow, sekarang kamu sudah berumur $age tahun! Semoga di usia ini, kamu selalu bahagia, sehat, dan sukses!',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 32),
              ElevatedButton(
                onPressed: () {
                  Navigator.popUntil(context, ModalRoute.withName('/'));
                },
                child: Text('Kembali ke Home'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
