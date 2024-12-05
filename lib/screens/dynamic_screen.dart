import 'package:flutter/material.dart';

class DynamicScreen extends StatefulWidget {
  final int count;

  DynamicScreen({required this.count});

  @override
  _DynamicScreenState createState() => _DynamicScreenState();
}

class _DynamicScreenState extends State<DynamicScreen> {
  int _currentPage = 1;

  void _nextPage() {
    if (_currentPage < widget.count) {
      setState(() {
        _currentPage++;
      });
    } else {
      _showLimitDialog('Screen yang terbuat hanya ${widget.count}');
    }
  }

  void _prevPage() {
    if (_currentPage > 1) {
      setState(() {
        _currentPage--;
      });
    } else {
      _showLimitDialog('Screen tidak dapat diakses di bawah halaman 1');
    }
  }

  void _showLimitDialog(String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Batas Tercapai'),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Menutup dialog
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman $_currentPage dari ${widget.count}'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Halaman $_currentPage',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: _prevPage,
                  child: Text('Prev'),
                ),
                ElevatedButton(
                  onPressed: _nextPage,
                  child: Text('Next'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
