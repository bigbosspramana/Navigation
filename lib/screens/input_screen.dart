import 'package:flutter/material.dart';
import 'dynamic_screen.dart';

class InputScreen extends StatefulWidget {
  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  final _controller = TextEditingController();
  String? _errorMessage;

  void _validateAndNavigate() {
    setState(() {
      _errorMessage = null; // Reset pesan kesalahan
    });

    try {
      int count = int.parse(_controller.text);
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DynamicScreen(count: count),
        ),
      );
    } catch (e) {
      setState(() {
        _errorMessage = "Harus berupa angka";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Masukkan Jumlah Halaman')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Masukkan Angka',
                border: OutlineInputBorder(),
                errorText: _errorMessage, // Tampilkan pesan kesalahan
              ),
              keyboardType: TextInputType.number,
            ),
            ElevatedButton(
              onPressed: _validateAndNavigate,
              child: Text('Buat Halaman'),
            ),
          ],
        ),
      ),
    );
  }
}
