import 'package:flutter/material.dart';
import 'counter_display.dart';
import 'details_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 0;

  @override
  void initState() { super.initState(); print("Home Initialized"); }

  @override
  void dispose() { print("Home Disposed"); super.dispose(); }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CounterDisplay(count: counter, label: "Counter value"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () => setState(() => counter++), child: const Text("Increment")),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => DetailsScreen(value: counter))),
                  child: const Text("Open Details"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}