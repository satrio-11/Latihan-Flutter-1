import 'package:flutter/material.dart';

class ImageLocalPage extends StatelessWidget {
  const ImageLocalPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Local (Asset)'),
        backgroundColor: cs.primary,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // tengah vertikal
          crossAxisAlignment: CrossAxisAlignment.center, // tengah horizontal
          children: [
            const SizedBox(height: 12),
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                'assets/images/alien.jpeg', // sesuaikan dengan file kamu
                width: double.infinity,
                height: 220,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 12),
            Container(padding: const EdgeInsets.all(12)),
          ],
        ),
      ),
    );
  }
}
