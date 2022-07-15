import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:locate_it/ui/profile_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(0, 156, 255, 1),
        // add body
        body: Body());
  }
}

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);

  String location = "";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(children: <Widget>[
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
              onSubmitted: (value) => print('Submitted $value')), // Need to do this page route
        ),
        // Text
        Container(
            padding: EdgeInsets.fromLTRB(25, 95, 0, 0),
            child: Text(
              "Recommended Locations",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            )),
        // Profile Icon
        IconButton(
          padding: EdgeInsets.fromLTRB(355, 45, 0, 0),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: ((context) => ProfilePage())));
          },
          icon: Icon(Icons.person),
          color: Colors.white,
        )
      ]),
    );
  }
}
