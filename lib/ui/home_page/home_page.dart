import 'package:flutter/material.dart';
import 'package:locate_it/ui/home_page/body_home.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [Colors.cyanAccent, Colors.blueAccent],
        )),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            // add body
            body: Body()));
  }
}
