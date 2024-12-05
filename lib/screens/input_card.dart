import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputCard extends StatefulWidget {
  @override
  _InputCardState createState() => _InputCardState();
}

class _InputCardState extends State<InputCard> {
  final _nameController = TextEditingController();
  final _ageController = TextEditingController();
  String? _nameError;
  String? _ageError;

  @override
  void dispose() {
    _nameController.dispose();
    _ageController.dispose();
    super.dispose();
  }

  void _validateAndNavigate() {
    setState(() {
      _nameError = null;
      _ageError = null;
    });

    String name = _nameController.text;
    String age = _ageController.text;

    // Validasi nama
    if (name.isEmpty || !RegExp(r'^[a-zA-Z\s]+$').hasMatch(name)) {
      setState(() {
        _nameError = "Nama hanya boleh mengandung huruf";
      });
      return;
    }

    // Validasi umur
    if (age.isEmpty || int.tryParse(age) == null || int.parse(age) > 110) {
      setState(() {
        _ageError = "Umur harus berupa angka dan tidak lebih dari 110";
      });
      return;
    }

    // Navigasi jika validasi berhasil
    Navigator.pushNamed(
      context,
      '/cardgift',
      arguments: {'name': name, 'age': age},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Form Ucapan')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Masukkan Nama',
                border: OutlineInputBorder(),
                errorText: _nameError, // Tampilkan pesan kesalahan nama
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _ageController,
              decoration: InputDecoration(
                labelText: 'Masukkan Umur',
                border: OutlineInputBorder(),
                errorText: _ageError, // Tampilkan pesan kesalahan umur
              ),
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly, // Hanya angka
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _validateAndNavigate,
              child: Text('Buat Kartu'),
            ),
          ],
        ),
      ),
    );
  }
}
