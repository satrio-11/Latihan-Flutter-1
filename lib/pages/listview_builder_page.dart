import 'package:flutter/material.dart';

class ListViewBuilderPage extends StatefulWidget {
  const ListViewBuilderPage({super.key});

  @override
  State<ListViewBuilderPage> createState() => _ListViewBuilderPageState();
}

class _ListViewBuilderPageState extends State<ListViewBuilderPage> {
  final items = List.generate(20, (i) => 'Item ${i + 1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ListView Builder',
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.zero,
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                ListTile(
                  leading: const Icon(Icons.list_alt_rounded),
                  title: Text(items[index]),
                  subtitle: Text('Index: $index'),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Klik: ${items[index]}')),
                    );
                  },
                ),
                const Divider(height: 1),
              ],
            );
          },
        ),
      ),
    );
  }
}
