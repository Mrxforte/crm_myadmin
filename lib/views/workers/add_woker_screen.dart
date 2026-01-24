import 'package:flutter/material.dart';

class AddWokerScreen extends StatelessWidget {
  const AddWokerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Worker')),
      body: const Center(child: Text('Add Worker Screen Content')),
    );
  }
}
