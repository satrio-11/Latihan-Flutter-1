import 'package:flutter/material.dart';

class IconPage extends StatelessWidget {
  const IconPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    final items = <IconData>[
      Icons.home,
      Icons.favorite,
      Icons.settings,
      Icons.alarm,
      Icons.camera_alt,
      Icons.flutter_dash,
      Icons.star,
      Icons.shopping_cart,
      Icons.lightbulb,
      Icons.map,
      Icons.music_note,
      Icons.lock,
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Icon'),
        backgroundColor: cs.primary,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Contoh Icon dengan berbagai ukuran:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.favorite, size: 24, color: cs.primary),
                Icon(Icons.favorite, size: 36, color: cs.primary),
                Icon(Icons.favorite, size: 48, color: cs.primary),
              ],
            ),
            const SizedBox(height: 18),
            const Text(
              'Grid Icon (Wrap):',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 10),
            Wrap(
              spacing: 12,
              runSpacing: 12,
              children: items
                  .map(
                    (ic) => Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: cs.primary.withValues(alpha: 0.08),
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(
                          color: Colors.black.withValues(alpha: 0.06),
                        ),
                      ),
                      child: Icon(ic, color: cs.primary),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
