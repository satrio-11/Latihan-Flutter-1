import 'package:flutter/material.dart';

class TextFieldPage extends StatefulWidget {
  const TextFieldPage({super.key});

  @override
  State<TextFieldPage> createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();

  String _liveName = '';

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('TextField'),
        backgroundColor: cs.primary,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _nameController,
              onChanged: (v) => setState(() => _liveName = v),
              decoration: InputDecoration(
                labelText: 'Nama',
                hintText: 'Ketik nama kamu...',
                border: const OutlineInputBorder(),
                prefixIcon: const Icon(Icons.person),
              ),
            ),
            const SizedBox(height: 14),
            TextField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Email',
                border: const OutlineInputBorder(),
                suffixIcon: Icon(Icons.email, color: cs.primary),
              ),
            ),
            const SizedBox(height: 14),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: cs.primary.withValues(alpha: 0.08),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.black.withValues(alpha: 0.06)),
              ),
              child: Text(
                'Live nama: $_liveName',
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                final name = _nameController.text.trim();
                final email = _emailController.text.trim();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Submit: $name | $email')),
                );
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
