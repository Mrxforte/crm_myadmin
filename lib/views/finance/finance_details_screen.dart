import 'package:flutter/material.dart';

class FinanceDetailsScreen extends StatelessWidget {
  const FinanceDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Finance Details')),
      body: const Center(child: Text('Finance Details Screen Content')),
    );
  }
}
