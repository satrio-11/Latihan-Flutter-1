import 'package:flutter/material.dart';

class GridViewExtentPage extends StatefulWidget {
  const GridViewExtentPage({super.key});

  @override
  State<GridViewExtentPage> createState() => _GridViewExtentPageState();
}

class _GridViewExtentPageState extends State<GridViewExtentPage> {
  final items = List.generate(24, (i) => 'Item ${i + 1}');

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: const Color(0xFFF6F7FB),
      appBar: AppBar(
        title: const Text(
          'GridView Extent',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        backgroundColor: cs.primary,
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: GridView.extent(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.fromLTRB(12, 12, 12, 16),
          maxCrossAxisExtent: 180, // <= kunci extent
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          childAspectRatio: 1.05,
          children: [
            for (final title in items)
              _ExtentCard(title: title, color: cs.primary),
          ],
        ),
      ),
    );
  }
}

class _ExtentCard extends StatelessWidget {
  final String title;
  final Color color;

  const _ExtentCard({required this.title, required this.color});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: Colors.black.withValues(alpha: 0.06)),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text('Klik: $title')));
        },
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  color: color.withValues(alpha: 0.10),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(Icons.grid_4x4_rounded, color: color),
              ),
              const Spacer(),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'GridView.extent',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black.withValues(alpha: 0.55),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
