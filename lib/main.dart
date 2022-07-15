import 'package:flutter/material.dart';
import 'login_page.dart';
// ignore: unused_import
import 'ui/home_page.dart';

void main() {
  runApp(const LocateIt());
}

class LocateIt extends StatelessWidget {
  const LocateIt({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      // home: MyHomePage(),
      home: LoginPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    // All of these will change with containers
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Profile',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.star),
              label: 'Favourites'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notes),
              label: 'Notes')
        ],
        currentIndex: _selectedIndex,
<<<<<<< HEAD
        selectedItemColor: const Color.fromARGB(255, 1, 16, 19),
=======
        selectedItemColor: Color.fromRGBO(0, 156, 255, 1),
>>>>>>> 3f3170cefd42baf08de87ce2bfd1381454a1cb3d
        onTap: _onItemTapped,
      ),
    );
  }
}
