import 'package:flutter/material.dart';

class GridViewCountPage extends StatefulWidget {
  const GridViewCountPage({super.key});

  @override
  State<GridViewCountPage> createState() => _GridViewCountPageState();
}

class _GridViewCountPageState extends State<GridViewCountPage> {
  final items = List.generate(12, (i) => 'Item ${i + 1}');

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: const Color(0xFFF6F7FB),
      appBar: AppBar(
        title: const Text(
          'GridView Count',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        backgroundColor: cs.primary,
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: GridView.count(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.fromLTRB(12, 12, 12, 16),
          crossAxisCount: 2,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          childAspectRatio: 1.1,
          children: [
            for (final title in items)
              _GridCard(
                title: title,
                icon: Icons.grid_3x3_rounded,
                color: cs.primary,
              ),
          ],
        ),
      ),
    );
  }
}

class _GridCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;

  const _GridCard({
    required this.title,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: () {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Klik: $title')));
      },
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(color: Colors.black.withValues(alpha: 0.06)),
        ),
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
                child: Icon(icon, color: color),
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
                'Contoh GridView.count',
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
