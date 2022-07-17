import 'package:flutter/material.dart';
import 'package:locate_it/home_page/home_page.dart';
import 'login_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Future<FirebaseApp> _initializeFirebase() async {
  //   FirebaseApp firebaseApp = await Firebase.initializeApp();
  //   return firebaseApp;
  // }

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    // All of these will change with containers
    MaterialApp(
      home: HomePage()
    ),
    Text(
      'Favourites',
      style: optionStyle,
    ),
    Text(
      'Notes',
      style: optionStyle,
    ),
    Text(
      'Profile',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    if (index == 3) {
      Navigator.push(context,
          MaterialPageRoute(builder: ((context) => const LoginPage())));
    } 
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
        backgroundColor: Colors.cyanAccent,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Color.fromARGB(255, 72, 67, 145)),
           BottomNavigationBarItem(
            icon: Icon(Icons.star), 
            label: 'Favourites',
            backgroundColor: Color.fromARGB(255, 72, 67, 145)),
          BottomNavigationBarItem(
            icon: Icon(Icons.notes), 
            label: 'Notes', 
            backgroundColor: Color.fromARGB(255, 72, 67, 145)),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Colors.blueGrey,
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromRGBO(0, 156, 255, 1),
        onTap: _onItemTapped,
      ),
    );
  }
}
