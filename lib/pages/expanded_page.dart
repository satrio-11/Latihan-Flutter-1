import 'package:flutter/material.dart';

class ExpandedPage extends StatelessWidget {
  const ExpandedPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Expanded'),
        backgroundColor: cs.primary,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              height: 50,
              width: double.infinity,
              color: cs.primary.withValues(alpha: 0.15),
              alignment: Alignment.center,
              child: const Text('Header (tinggi tetap)'),
            ),
            const SizedBox(height: 12),

            // Expanded membagi sisa ruang
            Expanded(
              child: Container(
                width: double.infinity,
                color: cs.secondary.withValues(alpha: 0.15),
                alignment: Alignment.center,
                child: const Text('Expanded (isi sisa ruang)'),
              ),
            ),

            const SizedBox(height: 12),
            Container(
              height: 50,
              width: double.infinity,
              color: Colors.black.withValues(alpha: 0.10),
              alignment: Alignment.center,
              child: const Text('Footer (tinggi tetap)'),
            ),
          ],
        ),
      ),
    );
  }
}
