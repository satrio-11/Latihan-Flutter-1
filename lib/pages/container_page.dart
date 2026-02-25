import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Container Page')),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.blue.shade100,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.blueGrey),
          ),
          child: const Text('Ini Container', style: TextStyle(fontSize: 24)),
        ),
      ),
    );
  }
}
