import 'dart:developer';
import 'package:flutter/material.dart';

class ScaffoldPage extends StatefulWidget {
  const ScaffoldPage({super.key});

  @override
  State<ScaffoldPage> createState() => _ScaffoldPageState();
}

class _ScaffoldPageState extends State<ScaffoldPage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Scaffold Page')),
      body: Center(
        child: Text('Counter: $counter', style: const TextStyle(fontSize: 24)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          log('FAB pressed');
          setState(() => counter++);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
