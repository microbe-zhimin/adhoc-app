import 'package:flutter/material.dart';

import 'screens/account.dart';
import 'screens/edit.dart';
import 'screens/newfile.dart';
import 'screens/search.dart';
import 'screens/history.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'ADHOC',
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  static const _screens = [
    AccountScreen(),
    EditScreen(),
    NewfileScreen(),
    SearchScreen(),
    HistoryScreen()
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _screens[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(//
                icon: Icon(Icons.people),
                label: 'Account',
                backgroundColor: Colors.lightBlueAccent
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.edit),
              label: 'Edit',
              backgroundColor: Colors.lightBlueAccent
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.note),
              label: 'A',
              backgroundColor: Colors.lightBlueAccent
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'A',
              backgroundColor: Colors.lightBlueAccent
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: 'History',
              backgroundColor: Colors.lightBlueAccent
            ),
          ],

          type: BottomNavigationBarType.shifting,
         // backgroundColor: Colors.red,
          enableFeedback: true,
          iconSize: 18,
          selectedFontSize: 20,
          selectedIconTheme: const IconThemeData(size: 30, color: Colors.white),
          selectedLabelStyle: const TextStyle(color: Colors.red),
         // selectedItemColor: Colors.black,
          unselectedFontSize: 15,
          unselectedIconTheme: const IconThemeData(size: 25, color: Colors.black),
          //unselectedLabelStyle: const TextStyle(color: Colors.purple),
         // unselectedItemColor: Colors.red,
        )
    );
  }
}