import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'screens/Home.dart';
import 'screens/account.dart';
import 'screens/edit.dart';
import 'screens/newfile.dart';
import 'screens/DiscoveryPage.dart';
import 'screens/history.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration.zero, () =>
        showDialog(
            context: context,
            builder: (context) =>
                AlertDialog(
                  title: const Text('CAUTION'),
                  content: const Text(
                      'This application uses Bluetooth.\nMake sure your device\'s Bluetooth is turned on or off.'),
                  actions: <Widget>[
                    OutlinedButton(
                        onPressed: () {
                          openAppSettings();
                        },
                        child: const Text('Open Setting')
                    ),
                    OutlinedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('OK')
                    )
                  ],
                )
        ),
    );
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),

    );

  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override

  State<MyHomePage> createState() => _MyHomePage();

}

class _MyHomePage extends State<MyHomePage> {
  static const _screens = [
    HomeScreen(),
    DiscoveryPage(),
    NewfileScreen(),
    EditScreen(),
    HistoryScreen(),
    AccountScreen()
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
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Colors.lightBlueAccent
            ),
            BottomNavigationBarItem(//
                icon: Icon(Icons.search),
                label: 'Discovery Devices',
                backgroundColor: Colors.lightBlueAccent
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.edit),
                label: 'Create New File',
                backgroundColor: Colors.lightBlueAccent
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.note),
                label: 'Edit Files',
                backgroundColor: Colors.lightBlueAccent
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.history),
                label: 'History',
                backgroundColor: Colors.lightBlueAccent
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.people),
                label: 'Account',
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