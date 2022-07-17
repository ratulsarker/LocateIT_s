import 'package:flutter/material.dart';
import 'login_page.dart';

// ignore: unused_import
import 'ui/home_page.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase
  runApp(const LocateIt());
}

class LocateIt extends StatefulWidget {
  const LocateIt({Key? key}) : super(key: key);

  @override
  State<LocateIt> createState() => _LocateItState();
}

class _LocateItState extends State<LocateIt> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'LocateIT',
      home: MyHomePage(),
      //i did this to test my login page
      // comment the line below and uncomment the home page line to run code

      //home: LoginPage(),
    );
  }
}

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
    Text(
      'Insert Home search bar etc',
      style: optionStyle,
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
    } else if (index == 0) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const HomePage(),
          ));
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
      // c
      // body: Futurebuilder(
      //     future: _initializedFirebase(),
      //     builder: (context, snapshot) {
      //       if (snapshot.connectionState == ConnectionState.done) {
      //         return const LoginPage();
      //       }
      //       return const Center(
      //         child: CircularProgressIndicator(),

      //       ),
      //     }),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.cyanAccent,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Color.fromARGB(255, 182, 145, 133)),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favourites'),
          BottomNavigationBarItem(icon: Icon(Icons.notes), label: 'Notes'),
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
