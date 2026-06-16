import 'package:flutter/material.dart';

class CounterDisplay extends StatelessWidget {
  final int count;
  final String label;
  const CounterDisplay({super.key, required this.count, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(label, style: const TextStyle(fontSize: 18)),
        Text('$count', style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
      ],
    );
  }
}