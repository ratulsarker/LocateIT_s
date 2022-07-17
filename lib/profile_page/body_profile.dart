import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _Body();
}

class _Body extends State<Body> {
  String name = "Justin Medeiros";
  String username = "jmedeiros11";
  String email = "mede4390@mylaurier.ca";
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SearchBar(350, name, 1), // Name field
        // Username Text
        Container(
          alignment: Alignment.topCenter,
          padding: const EdgeInsets.only(top: 440, right: 260),
          child: const Text(
            "Username",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20
            ),
          )
          
        ),
        SearchBar(480, username, 0), // Username field
        // Email Text
         Container(
          alignment: Alignment.topCenter,
          padding: const EdgeInsets.only(top: 550, right: 295),
          child: const Text(
            "Email",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20
            ),
          )
          
        ),
        SearchBar(590, email, 0), // Password field
        // User's Name
        /*Container(
          alignment: Alignment.topCenter,
          padding: const EdgeInsets.only(top: 400),
          child: Text(
            name,
            style: const TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),*/
        // Profile Icon
        Container(
          alignment: Alignment.topCenter,
          padding: const EdgeInsets.only(top: 140),
          child: IconButton(
            // Button for now until can get pictures figured out
            iconSize: 200,
            onPressed: () {},
            icon: const Icon(Icons.person),
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Container SearchBar(double paddingTop, String name, int boxed) {
    if (boxed == 1) {
      return Container(
          padding: EdgeInsets.only(top: paddingTop),
          alignment: Alignment.topCenter,
          child: CupertinoTextField(
              textAlign: TextAlign.center,
              placeholder: name,
              placeholderStyle: const TextStyle(color: Colors.white),
              style: const TextStyle(color: Colors.white, fontSize: 40),
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              cursorColor: Colors.white,
              onSubmitted: (value) => name = value));
    } else {
      return Container(
        padding: EdgeInsets.only(top: paddingTop, right: 60, left: 60),
        alignment: Alignment.topCenter,
        child: CupertinoTextField(
            textAlign: TextAlign.left,
            padding: const EdgeInsets.all(8),
            placeholder: name,
            placeholderStyle: const TextStyle(color: Colors.white),
            style: const TextStyle(color: Colors.white, fontSize: 16),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(0, 0, 0, 0),
              border: Border.all(color: Colors.white, width: 3),
              borderRadius: BorderRadius.circular(20),
            ),
            cursorColor: Colors.white,
            onSubmitted: (value) => name = value) // Need to do this page route
      );
    }
  }
}
