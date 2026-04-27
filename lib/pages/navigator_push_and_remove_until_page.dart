import 'package:flutter/material.dart';
import 'navigator_detail_page.dart';

class NavigatorPushAndRemoveUntilPage extends StatefulWidget {
  const NavigatorPushAndRemoveUntilPage({super.key});

  @override
  State<NavigatorPushAndRemoveUntilPage> createState() =>
      _NavigatorPushAndRemoveUntilPageState();
}

class _NavigatorPushAndRemoveUntilPageState
    extends State<NavigatorPushAndRemoveUntilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Push RemoveUntil Navigation',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => const NavigatorDetailPage(
                    title: 'Navigator Push And Remove Until',
                    description:
                        'Halaman ini dibuka dengan Navigator.pushAndRemoveUntil().\nSemua halaman sebelumnya dihapus dari tumpukan navigasi.',
                    showPopButton: false,
                  ),
                ),
                (route) => false,
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
            ),
            child: const Text('Go to Detail Page'),
          ),
        ),
      ),
    );
  }
}
