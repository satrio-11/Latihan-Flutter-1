import 'package:flutter/material.dart';

class RowColumnPage extends StatelessWidget {
  const RowColumnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Row Column Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Above Row', style: TextStyle(fontSize: 24)),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(color: Colors.red, width: 50, height: 50),
                Container(color: Colors.green, width: 50, height: 50),
                Container(color: Colors.blue, width: 50, height: 50),
              ],
            ),
            const SizedBox(height: 20),
            const Text('Below Row', style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
