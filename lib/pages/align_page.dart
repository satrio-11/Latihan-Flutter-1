import 'package:flutter/material.dart';

class AlignPage extends StatelessWidget {
  const AlignPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Align'),
        backgroundColor: cs.primary,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text(
              'Align mengatur posisi child di dalam parent.',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 12),
            Container(
              width: double.infinity,
              height: 220,
              decoration: BoxDecoration(
                color: cs.primary.withValues(alpha: 0.08),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.black.withValues(alpha: 0.06)),
              ),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                    color: cs.primary,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Center(
                    child: Text(
                      'BR',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
