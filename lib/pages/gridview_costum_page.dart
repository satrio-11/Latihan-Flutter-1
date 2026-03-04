import 'package:flutter/material.dart';

class GridViewCostumPage extends StatefulWidget {
  const GridViewCostumPage({super.key});

  @override
  State<GridViewCostumPage> createState() => _GridViewCostumPageState();
}

class _GridViewCostumPageState extends State<GridViewCostumPage> {
  final items = List.generate(
    16,
    (i) => {
      'title': 'Produk ${i + 1}',
      'subtitle': 'Deskripsi produk ${i + 1}',
      'price': (i + 1) * 15,
    },
  );

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: const Color(0xFFF6F7FB),
      appBar: AppBar(
        title: const Text(
          'GridView Costum',
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
            childAspectRatio: 0.95, // custom: lebih tinggi
          ),
          itemBuilder: (context, index) {
            final item = items[index];
            return _ProductCard(
              title: item['title'] as String,
              subtitle: item['subtitle'] as String,
              price: item['price'] as int,
              color: cs.primary,
            );
          },
        ),
      ),
    );
  }
}

class _ProductCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final int price;
  final Color color;

  const _ProductCard({
    required this.title,
    required this.subtitle,
    required this.price,
    required this.color,
  });

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
          ).showSnackBar(SnackBar(content: Text('Pilih: $title')));
        },
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: color.withValues(alpha: 0.10),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(Icons.shopping_bag_rounded, color: color, size: 36),
              ),
              const SizedBox(height: 10),
              Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                subtitle,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black.withValues(alpha: 0.55),
                ),
              ),
              const Spacer(),
              Text(
                '\$$price',
                style: const TextStyle(fontWeight: FontWeight.w800),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
