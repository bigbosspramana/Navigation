import 'package:flutter/material.dart';

class CardGift extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;
    String name = args['name'];
    String age = args['age'];

    return Scaffold(
      appBar: AppBar(title: Text('Kartu Ucapan')),
      body: Center(
        child: Card(
          elevation: 5,
          margin: EdgeInsets.all(16.0),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Selamat Ulang Tahun!', style: TextStyle(fontSize: 24)),
                SizedBox(height: 10),
                Text('Happy Birthday $name  yang ke $age!!!', style: TextStyle(fontSize: 18)),
                Text('Panjang umur dan sehat selalu', style: TextStyle(fontSize: 18)),
                Text('Wish u all the best n God Bless', style: TextStyle(fontSize: 18)),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/closecard');
                  },
                  child: Text('Lanjut'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
