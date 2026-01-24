import 'package:flutter/material.dart';

class ToolsScreen extends StatelessWidget {
  static const String route = "/Tools";
  const ToolsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tools')),
      body: const Center(child: Text('Tools Screen Content')),
    );
  }
}
