import 'package:flutter/material.dart';

class ImageInternetPage extends StatelessWidget {
  const ImageInternetPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    const url = 'https://picsum.photos/800/500';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Internet'),
        backgroundColor: cs.primary,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.network(
            url,
            width: double.infinity,
            height: 260,
            fit: BoxFit.cover,
            loadingBuilder: (context, child, progress) {
              if (progress == null) return child;

              final total = progress.expectedTotalBytes ?? 1;
              final loaded = progress.cumulativeBytesLoaded;
              final value = loaded / total;

              return SizedBox(
                height: 260,
                child: Center(child: CircularProgressIndicator(value: value)),
              );
            },
            errorBuilder: (context, error, stack) {
              return SizedBox(
                height: 260,
                child: Center(
                  child: Text(
                    'Gagal load image:\n$error',
                    textAlign: TextAlign.center,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
