import 'package:flutter/material.dart';

class CenterPage extends StatelessWidget {
  const CenterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Center Page')),
      body: const Center(
        child: Text('This is the Center Page', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
