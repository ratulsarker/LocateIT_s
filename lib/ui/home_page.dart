import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:locate_it/ui/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(0, 156, 255, 1),
        // add body
        body: Body());
  }
}

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
        IconButton(
          padding: const EdgeInsets.only(left: 355, top: 48),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: ((context) => ProfilePage())));
          },
          icon: const Icon(Icons.person),
          color: Colors.white,
        ),
        // Search bar -> UNFINISHED
        Container(
          width: 350,
          padding: EdgeInsets.fromLTRB(20, 40, 30, 0),
          alignment: Alignment.topLeft,
          child: CupertinoTextField(
              padding: EdgeInsets.all(8),
              placeholder: 'Search',
              placeholderStyle: TextStyle(color: Colors.white),
              style: TextStyle(color: Colors.white, fontSize: 14),
              decoration: BoxDecoration(
                color: Color.fromRGBO(0, 0, 0, 0.1),
                border: Border.all(color: Colors.white, width: 3),
                borderRadius: BorderRadius.circular(20),
              ),
              cursorColor: Colors.white,
              onSubmitted: (value) =>
                  print('Submitted $value')), // Need to do this page route
        ),
        // Text
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
