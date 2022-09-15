import 'package:flutter/material.dart';

class NewfileScreen extends StatelessWidget {
  const NewfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('newfile'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: const Center(
          child: Text('newfile画面', style: TextStyle(fontSize: 32.0))),
    );
  }
}