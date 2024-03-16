import 'package:flutter/material.dart';

class QuestPage extends StatefulWidget {

  final String title;
  const QuestPage({super.key, required this.title});

  @override
  _QuestPage createState() => _QuestPage();
}

class _QuestPage extends State<QuestPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Welcome to the Quest Page',
        ),
      ),
    );
  }
}