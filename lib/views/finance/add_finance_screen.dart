import 'package:flutter/material.dart';

class AddFinanceScreen extends StatelessWidget {
  const AddFinanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Finance')),
      body: const Center(child: Text('Add Finance Screen Content')),
    );
  }
}
