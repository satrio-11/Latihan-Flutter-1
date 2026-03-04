import 'package:flutter/material.dart';

class ListViewCostumPage extends StatefulWidget {
  const ListViewCostumPage({super.key});

  @override
  State<ListViewCostumPage> createState() => _ListViewCostumPageState();
}

class _ListViewCostumPageState extends State<ListViewCostumPage> {
  final items = List.generate(
    12,
    (i) => {
      'title': 'Produk ${i + 1}',
      'subtitle': 'Deskripsi singkat produk ${i + 1}',
      'price': (i + 1) * 10,
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F7FB),
      appBar: AppBar(
        title: const Text(
          'ListView Costum',
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.fromLTRB(12, 12, 12, 16),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];

            return Card(
              elevation: 0,
              margin: const EdgeInsets.only(bottom: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
                side: BorderSide(color: Colors.black.withValues(alpha: 0.06)),
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 10,
                ),
                leading: Container(
                  width: 44,
                  height: 44,
                  decoration: BoxDecoration(
                    color: Colors.blue.withValues(alpha: 0.10),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(Icons.shopping_bag_rounded),
                ),
                title: Text(
                  item['title'] as String,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                subtitle: Text(
                  item['subtitle'] as String,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black.withValues(alpha: 0.55),
                  ),
                ),
                trailing: Text(
                  '\$${item['price']}',
                  style: const TextStyle(fontWeight: FontWeight.w700),
                ),
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Pilih: ${item['title']}')),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
