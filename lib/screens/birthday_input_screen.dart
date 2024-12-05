import 'package:flutter/material.dart';
import 'birthday_card_screen.dart'; // Import layar untuk menampilkan kartu

class BirthdayInputScreen extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Masukkan Data Ulang Tahun'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Nama'),
            ),
            SizedBox(height: 16),
            TextField(
              controller: ageController,
              decoration: InputDecoration(labelText: 'Umur'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                String name = nameController.text;
                String age = ageController.text;

                if (name.isNotEmpty && age.isNotEmpty) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          BirthdayCardScreen(name: name, age: age),
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Mohon isi semua data!')),
                  );
                }
              },
              child: Text('Buat Kartu'),
            ),
          ],
        ),
      ),
    );
  }
}
