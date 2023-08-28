import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('home'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: const Center(
          child: Text('Development of Data Transmission Method Using Ad Hoc Communication',
              style: TextStyle(fontSize: 32.0),
              textAlign: TextAlign.center,
              overflow: TextOverflow.clip,
          )),
    );
  }
}