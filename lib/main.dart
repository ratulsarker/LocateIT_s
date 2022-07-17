import 'package:flutter/material.dart';
import 'my_home_page.dart';
// import 'package:firebase_core/firebase_core.dart';

// ignore: unused_import
import 'ui/home_page.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
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
    );
  }
}
