import 'package:flutter/material.dart';

class ListViewSeparatedPage extends StatefulWidget {
  const ListViewSeparatedPage({super.key});

  @override
  State<ListViewSeparatedPage> createState() => _ListViewSeparatedPageState();
}

class _ListViewSeparatedPageState extends State<ListViewSeparatedPage> {
  final items = List.generate(20, (i) => 'Item ${i + 1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ListView Separated',
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
        ),
      ),
      body: SafeArea(
        child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.zero,
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: const Icon(Icons.view_list_rounded),
              title: Text(items[index]),
              subtitle: Text('Index: $index'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Klik: ${items[index]}')),
                );
              },
            );
          },
          separatorBuilder: (context, index) => const Divider(height: 1),
        ),
      ),
    );
  }
}
