import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
            padding: const EdgeInsets.only(top: 560),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => const LoginPage()),
                    ));
              },
              child: Text(
                'Sign Out',
                style: GoogleFonts.didactGothic(
                  fontSize: 14.0,
                  textStyle:
                      const TextStyle(color: Colors.white, letterSpacing: .5, fontWeight: FontWeight.bold),
                  shadows: [const BoxShadow(offset: Offset(1,1), blurRadius: 10.0, color: Color.fromRGBO(0, 0, 0, 0.3), spreadRadius: 10)]
                ),
              ),
            )),
        // Back button
        Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.only(top: 25, left: 5),
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
          padding: const EdgeInsets.only(top: 480),
          child: RawMaterialButton(
              fillColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
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
              child: Text(
                "Confirm Changes",
                style: GoogleFonts.didactGothic(
                  fontSize: 18.0,
                  textStyle:
                      const TextStyle(color: Color.fromRGBO(83, 146, 252, 1), letterSpacing: .5, fontWeight: FontWeight.bold),
                      shadows: [const BoxShadow(offset: Offset(0,0), blurRadius: 5.0, color: Color.fromRGBO(0, 0, 0, 0.2), spreadRadius: 10)]
                ),
              )),
        ),
        SearchBar(240, new_name, 1), // Name field
        // Username Text
        Container(
            alignment: Alignment.topCenter,
            padding: const EdgeInsets.only(top: 320, right: 260),
            child: Text(
              "Username",
              style: GoogleFonts.didactGothic(
                  fontSize: 18.0,
                  textStyle:
                      const TextStyle(color: Colors.white, letterSpacing: .5, fontWeight: FontWeight.bold),
                  shadows: [const BoxShadow(offset: Offset(1,1), blurRadius: 10.0, color: Color.fromRGBO(0, 0, 0, 0.3), spreadRadius: 10)]
                ),
            )),
        SearchBar(360, new_username, 0), // Username field
        // Email Text
        Container(
            alignment: Alignment.topCenter,
            padding: const EdgeInsets.only(top: 420, right: 295),
            child: Text(
              "Email",
              style: GoogleFonts.didactGothic(
                  fontSize: 18.0,
                  textStyle:
                      const TextStyle(color: Colors.white, letterSpacing: .5, fontWeight: FontWeight.bold),
                  shadows: [const BoxShadow(offset: Offset(1,1), blurRadius: 10.0, color: Color.fromRGBO(0, 0, 0, 0.3), spreadRadius: 10)]
                ),
            )),
        SearchBar(460, new_email, 0), // Password field
        // Profile Icon
        Container(
          alignment: Alignment.topCenter,
          padding: const EdgeInsets.only(top: 60),
          child: IconButton(
            // Button for now until can get pictures figured out
            iconSize: 180,
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
              style: GoogleFonts.didactGothic(
                  fontSize: 34.0,
                  textStyle:
                      const TextStyle(color: Colors.white, letterSpacing: .5, fontWeight: FontWeight.bold),
                  shadows: [const BoxShadow(offset: Offset(1,1), blurRadius: 10.0, color: Color.fromRGBO(0, 0, 0, 0.3), spreadRadius: 10)]
                ),
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
             style: GoogleFonts.didactGothic(
                  fontSize: 16.0,
                  textStyle:
                      const TextStyle(color: Colors.white, letterSpacing: .5, fontWeight: FontWeight.bold),
                  shadows: [const BoxShadow(offset: Offset(1,1), blurRadius: 10.0, color: Color.fromRGBO(0, 0, 0, 0.3), spreadRadius: 10)]
                ),
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
