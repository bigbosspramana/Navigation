import 'package:flutter/material.dart';

class CloseCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Terima Kasih')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Terima kasih telah menggunakan aplikasi kami!',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/screen1', (route) => false);
              },
              child: Text('Kembali ke Awal'),
            ),
          ],
        ),
      ),
    );
  }
}
