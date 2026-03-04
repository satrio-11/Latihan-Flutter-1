import 'package:flutter/material.dart';

class GridViewBuilderPage extends StatefulWidget {
  const GridViewBuilderPage({super.key});

  @override
  State<GridViewBuilderPage> createState() => _GridViewBuilderPageState();
}

class _GridViewBuilderPageState extends State<GridViewBuilderPage> {
  final items = List.generate(30, (i) => 'Item ${i + 1}');

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: const Color(0xFFF6F7FB),
      appBar: AppBar(
        title: const Text(
          'GridView Builder',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        backgroundColor: cs.primary,
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: GridView.builder(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.fromLTRB(12, 12, 12, 16),
          itemCount: items.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            childAspectRatio: 1.1,
          ),
          itemBuilder: (context, index) {
            return _GridItemBuilder(
              title: items[index],
              index: index,
              color: cs.primary,
            );
          },
        ),
      ),
    );
  }
}

class _GridItemBuilder extends StatelessWidget {
  final String title;
  final int index;
  final Color color;

  const _GridItemBuilder({
    required this.title,
    required this.index,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: () {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Klik: $title (index $index)')));
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
                child: Icon(Icons.grid_view_rounded, color: color),
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
                'GridView.builder',
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
