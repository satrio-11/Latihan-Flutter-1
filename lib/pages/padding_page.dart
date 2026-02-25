import 'package:flutter/material.dart';

class PaddingPage extends StatelessWidget {
  const PaddingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Padding'),
        backgroundColor: cs.primary,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: cs.primary.withValues(alpha: 0.10),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.black.withValues(alpha: 0.06)),
              ),
              child: const Text(
                'Ini Container dengan padding 20.\n'
                'Padding membuat isi menjauh dari tepi.',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(height: 14),
            Container(
              width: double.infinity,
              color: Colors.black.withValues(alpha: 0.05),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                child: Text(
                  'Ini Padding terpisah (EdgeInsets.symmetric).',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
