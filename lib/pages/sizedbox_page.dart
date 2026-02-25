import 'package:flutter/material.dart';

class SizedBoxPage extends StatelessWidget {
  const SizedBoxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SizedBox Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Above SizedBox', style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            Text('Below SizedBox', style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
