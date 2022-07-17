import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../profile_page/profile_page.dart';

class Body extends StatefulWidget {
  Body({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _Body();
}

class _Body extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(children: <Widget>[
        // Profile Icon
        Container(
          padding: const EdgeInsets.only(left: 342, top: 36),
          child: IconButton(
            iconSize: 30,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => const ProfilePage())));
            },
            icon: const Icon(Icons.person),
            color: Colors.white,
          ),
        ),
        // Search bar -> UNFINISHED
        Container(
          width: 350,
          padding: const EdgeInsets.fromLTRB(20, 40, 30, 0),
          alignment: Alignment.topLeft,
          child: CupertinoTextField(
              padding: const EdgeInsets.all(8),
              placeholder: 'Search',
              placeholderStyle: const TextStyle(color: Colors.white),
              style: const TextStyle(color: Colors.white, fontSize: 14),
              decoration: BoxDecoration(
                boxShadow: [BoxShadow(
                  color: Colors.grey.withOpacity(0.5), 
                  offset: const Offset(0, 5),
                  blurRadius: 7,
                  spreadRadius: 3
              )],
                color: const Color.fromRGBO(0, 0, 0, 0.1),
                border: Border.all(color: Colors.white, width: 3),
                borderRadius: BorderRadius.circular(20),
              ),
              cursorColor: Colors.white,
              onSubmitted: (value) =>
                  print('Submitted $value')), // Need to do this page route
        ),
        // Text
          // Need to put shadow behind text
        Container(
            padding: const EdgeInsets.fromLTRB(25, 95, 0, 0),
            child: const Text(
              "Recommended Locations",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            )),
      ]),
    );
  }
}
