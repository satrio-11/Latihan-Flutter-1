import 'package:flutter/material.dart';

class ColumnPage extends StatelessWidget {
  const ColumnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Column Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SizedBox(
              width: 100,
              height: 100,
              child: ColoredBox(color: Colors.red),
            ),
            SizedBox(height: 12),
            SizedBox(
              width: 100,
              height: 100,
              child: ColoredBox(color: Colors.green),
            ),
            SizedBox(height: 12),
            SizedBox(
              width: 100,
              height: 100,
              child: ColoredBox(color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
