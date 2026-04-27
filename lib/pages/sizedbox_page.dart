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
          children: [
            // Kotak atas
            Container(
              width: 240,
              height: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.blueGrey),
              ),
              child: const Text('Kotak Atas'),
            ),

            // ✅ SizedBox sebagai jarak (biar kelihatan, dibuat tinggi)
            const SizedBox(height: 50),

            // Kotak bawah
            Container(
              width: 240,
              height: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.orange.shade100,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.orange),
              ),
              child: const Text('Kotak Bawah'),
            ),

            const SizedBox(height: 30),

            // ✅ SizedBox membatasi ukuran child
            SizedBox(
              width: 240,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Tombol dibatasi SizedBox'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
