import 'package:flutter/material.dart';
import 'package:locate_it/ui/home_page/body_home.dart';
// import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'my_home_page.dart';
import 'package:firebase_core/firebase_core.dart';

// ignore: unused_import
import 'ui/home_page/home_page.dart';
import 'my_home_page.dart';

Future main() async {
  // await dotenv.load(fileName: '.env');
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

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
    return MaterialApp(
      initialRoute: 'goHomePage',
      routes: {
        'goHomePage': (context) => const MyHomePage(),
      },
      title: 'LocateIT',
      home: const MyHomePage(),
    );
  }
}
