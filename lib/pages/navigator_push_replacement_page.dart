import 'package:flutter/material.dart';
import 'navigator_detail_page.dart';

class NavigatorPushReplacementPage extends StatefulWidget {
  const NavigatorPushReplacementPage({super.key});

  @override
  State<NavigatorPushReplacementPage> createState() =>
      _NavigatorPushReplacementPageState();
}

class _NavigatorPushReplacementPageState
    extends State<NavigatorPushReplacementPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Push Replacement Navigation',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const NavigatorDetailPage(
                    title: 'Navigator Push Replacement',
                    description:
                        'Halaman ini dibuka dengan Navigator.pushReplacement().\nHalaman sebelumnya diganti, jadi tombol kembali biasa tidak kembali ke halaman lama.',
                    showPopButton: false,
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
