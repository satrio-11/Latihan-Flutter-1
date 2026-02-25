import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  const StackPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack'),
        backgroundColor: cs.primary,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Container(
          width: 280,
          height: 220,
          decoration: BoxDecoration(
            color: cs.primary.withValues(alpha: 0.08),
            borderRadius: BorderRadius.circular(18),
          ),
          child: Stack(
            children: [
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        cs.primary.withValues(alpha: 0.25),
                        cs.secondary.withValues(alpha: 0.18),
                      ],
                    ),
                  ),
                ),
              ),
              const Center(
                child: Text(
                  'STACK\n(Widget ditumpuk)',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
              ),
              Positioned(
                top: 12,
                left: 12,
                child: _Badge(text: 'TOP-LEFT', color: cs.primary),
              ),
              Positioned(
                right: 12,
                bottom: 12,
                child: _Badge(text: 'BOTTOM-RIGHT', color: cs.secondary),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Badge extends StatelessWidget {
  final String text;
  final Color color;

  const _Badge({required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.90),
        borderRadius: BorderRadius.circular(999),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w700,
          fontSize: 12,
        ),
      ),
    );
  }
}
