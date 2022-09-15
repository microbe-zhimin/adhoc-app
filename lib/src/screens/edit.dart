import 'package:flutter/material.dart';

class EditScreen extends StatelessWidget {
  const EditScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('edit'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: const Center(
          child: Text('edit画面', style: TextStyle(fontSize: 32.0))),
    );
  }
}