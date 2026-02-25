import 'package:flutter/material.dart';

class RowPage extends StatelessWidget {
  const RowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Row Page')),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            SizedBox(
              width: 60,
              height: 60,
              child: ColoredBox(color: Colors.red),
            ),
            SizedBox(
              width: 60,
              height: 60,
              child: ColoredBox(color: Colors.green),
            ),
            SizedBox(
              width: 60,
              height: 60,
              child: ColoredBox(color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
