import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('history'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: const Center(
          child: Text('history画面', style: TextStyle(fontSize: 32.0))),
    );
  }
}