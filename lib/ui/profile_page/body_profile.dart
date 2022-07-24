import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:locate_it/ui/login_page/login_page.dart';
import 'package:locate_it/ui/home_page/home_page.dart';

class BodyProfile extends StatefulWidget {
  const BodyProfile({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BodyProfile();
}

class _BodyProfile extends State<BodyProfile> {
  static String name = "Justin Medeiros";
  static String username = "jmedeiros11";
  static String email = "mede4390@mylaurier.ca";

  String new_name = name;
  String new_username = username;
  String new_email = email;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Sign out button
        Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(top: 650),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => const LoginPage()),
                    ));
              },
              child: const Text(
                'Sign Out',
                style: TextStyle(color: Colors.white),
              ),
            )),
        // Back button
        Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.only(top: 5, left: 5),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => const HomePage()),
                    ));
              },
              icon: const Icon(Icons.arrow_back_rounded),
              iconSize: 40,
              color: Colors.white,
            )),
        // Confirm Changes
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.only(top: 510),
          child: ElevatedButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ))),
              onPressed: () {
                name = new_name;
                email = new_email;
                username = new_username;
                print(username);

                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const HomePage())));
              },
              child: const Text(
                "Confirm Changes",
                style: TextStyle(fontSize: 18, color: Colors.white),
              )),
        ),
        SearchBar(310, new_name, 1), // Name field
        // Username Text
        Container(
            alignment: Alignment.topCenter,
            padding: const EdgeInsets.only(top: 400, right: 260),
            child: const Text(
              "Username",
              style: TextStyle(color: Colors.white, fontSize: 20),
            )),
        SearchBar(440, new_username, 0), // Username field
        // Email Text
        Container(
            alignment: Alignment.topCenter,
            padding: const EdgeInsets.only(top: 510, right: 295),
            child: const Text(
              "Email",
              style: TextStyle(color: Colors.white, fontSize: 20),
            )),
        SearchBar(550, new_email, 0), // Password field
        // Profile Icon
        Container(
          alignment: Alignment.topCenter,
          padding: const EdgeInsets.only(top: 100),
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
              onSubmitted: (value) {
                name = value;
                print(name);
              }));
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
              onSubmitted: (value) {
                name = value;
                print(name);
              }) // Need to do this page route
          );
    }
  }

  void confirm_changes(String name_c, String username_c, String email_c) {
    name = name_c;
    username = username_c;
    email = email_c;
  }
}
