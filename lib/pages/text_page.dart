import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {
  const TextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Text Page')),
      body: const Center(
        child: Text(
          'Ini halaman Text',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.blueGrey,
          ),
        ),
      ),
    );
  }
}
