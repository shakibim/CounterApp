import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("About"),
          bottom: const TabBar(tabs: [Tab(text: "Info tab"), Tab(text: "Extra tab")]),
        ),
        body: const TabBarView(children: [
          Center(child: Text("Welcome to the App")),
          Center(child: Text("This is the extra tab")),
        ]),
      ),
    );
  }
}