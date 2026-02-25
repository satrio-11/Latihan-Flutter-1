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
          children: [
            const Text(
              'Pastikan asset image sudah didaftarkan di pubspec.yaml.',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 12),
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                'assets/images/flutter.png', // sesuaikan dengan file kamu
                width: double.infinity,
                height: 220,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.black.withValues(alpha: 0.05),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text(
                "Kalau error: 'Unable to load asset', cek:\n"
                "1) File ada di assets/images/flutter.png\n"
                "2) pubspec.yaml sudah mendaftarkan assets\n"
                "3) Jalankan: flutter pub get",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
