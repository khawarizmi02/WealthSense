import 'package:flutter/material.dart';

class OptionPage extends StatelessWidget {
  const OptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Options'),
      ),
      body: const Center(
        child: Text(
          'This is the options page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}