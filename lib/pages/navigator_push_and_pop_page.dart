import 'package:flutter/material.dart';
import 'navigator_detail_page.dart';

class NavigatorPushAndPopPage extends StatefulWidget {
  const NavigatorPushAndPopPage({super.key});

  @override
  State<NavigatorPushAndPopPage> createState() =>
      _NavigatorPushAndPopPageState();
}

class _NavigatorPushAndPopPageState extends State<NavigatorPushAndPopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Push Navigation',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NavigatorDetailPage(
                    title: 'Navigator Push & Pop',
                    description:
                        'Halaman ini dibuka dengan Navigator.push().\nTekan tombol Kembali untuk kembali ke halaman sebelumnya dengan Navigator.pop().',
                  ),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
            ),
            child: const Text('Go to Detail Page'),
          ),
        ),
      ),
    );
  }
}
