import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

class FirebaseStatusPage extends StatelessWidget {
  const FirebaseStatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    final apps = Firebase.apps;
    final isConnected = apps.isNotEmpty;

    FirebaseApp? app;
    FirebaseOptions? options;

    if (isConnected) {
      app = Firebase.app();
      options = app.options;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Firebase Status'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: BorderSide(
              color: Colors.black.withValues(alpha: 0.08),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: isConnected
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Row(
                        children: [
                          Icon(
                            Icons.check_circle,
                            color: Colors.green,
                            size: 32,
                          ),
                          SizedBox(width: 12),
                          Text(
                            'Firebase Terhubung',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      _InfoRow(
                        label: 'App Name',
                        value: app?.name ?? '-',
                      ),
                      _InfoRow(
                        label: 'Project ID',
                        value: options?.projectId ?? '-',
                      ),
                      _InfoRow(
                        label: 'App ID',
                        value: options?.appId ?? '-',
                      ),
                      _InfoRow(
                        label: 'API Key',
                        value: options?.apiKey ?? '-',
                      ),
                    ],
                  )
                : const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.error,
                            color: Colors.red,
                            size: 32,
                          ),
                          SizedBox(width: 12),
                          Text(
                            'Firebase Belum Terhubung',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 12),
                      Text(
                        'Firebase belum berhasil di-initialize. Cek kembali main.dart, firebase_core, dan google-services.json.',
                      ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final String label;
  final String value;

  const _InfoRow({
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 13,
              color: Colors.black.withValues(alpha: 0.55),
            ),
          ),
          const SizedBox(height: 4),
          SelectableText(
            value,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}