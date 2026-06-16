import 'package:flutter/material.dart';
import 'counter_display.dart';

class DetailsScreen extends StatelessWidget {
  final int value;
  const DetailsScreen({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Details")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CounterDisplay(count: value, label: "Received counter value"),
            ElevatedButton(onPressed: () => Navigator.pop(context), child: const Text("Back")),
          ],
        ),
      ),
    );
  }
}