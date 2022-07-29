import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../util/app_assets.dart';

class BodySignUp extends StatefulWidget {
  const BodySignUp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BodySignUp();
}

class _BodySignUp extends State<BodySignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          const SizedBox(height: 30),
          // Text
          const Image(
            image: AssetImage(AppAssets.logo),
          ),
          Text(
            'Sign up today!',
            style: GoogleFonts.didactGothic(
                fontSize: 18.0,
                textStyle: const TextStyle(
                    color: Colors.white,
                    letterSpacing: .5,
                    fontWeight: FontWeight.bold),
                shadows: [
                  const BoxShadow(
                      offset: Offset(1, 1),
                      blurRadius: 10.0,
                      color: Color.fromRGBO(0, 0, 0, 0.3),
                      spreadRadius: 10)
                ]),
          ),

          const SizedBox(height: 20),
          // First name
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(color: Colors.white, width: 3),
                borderRadius: BorderRadius.circular(40),
              ),
              child: TextField(
                style: GoogleFonts.didactGothic(
                  fontSize: 16.0,
                  textStyle: const TextStyle(
                      color: Colors.white,
                      letterSpacing: .5,
                      fontWeight: FontWeight.bold),
                  shadows: [
                    const BoxShadow(
                        offset: Offset(1, 1),
                        blurRadius: 10.0,
                        color: Color.fromRGBO(0, 0, 0, 0.3),
                        spreadRadius: 10)
                  ],
                ),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'First Name',
                  hintStyle: TextStyle(color: Colors.white),
                  prefixIcon: Icon(
                    Icons.type_specimen_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          // Last name
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(color: Colors.white, width: 3),
                borderRadius: BorderRadius.circular(40),
              ),
              child: TextField(
                style: GoogleFonts.didactGothic(
                  fontSize: 16.0,
                  textStyle: const TextStyle(
                      color: Colors.white,
                      letterSpacing: .5,
                      fontWeight: FontWeight.bold),
                  shadows: [
                    const BoxShadow(
                        offset: Offset(1, 1),
                        blurRadius: 10.0,
                        color: Color.fromRGBO(0, 0, 0, 0.3),
                        spreadRadius: 10)
                  ],
                ),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Last Name',
                  hintStyle: TextStyle(color: Colors.white),
                  prefixIcon:
                      Icon(Icons.type_specimen_outlined, color: Colors.white),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          // Email
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(color: Colors.white, width: 3),
                borderRadius: BorderRadius.circular(40),
              ),
              child: TextField(
                style: GoogleFonts.didactGothic(
                  fontSize: 16.0,
                  textStyle: const TextStyle(
                      color: Colors.white,
                      letterSpacing: .5,
                      fontWeight: FontWeight.bold),
                  shadows: [
                    const BoxShadow(
                        offset: Offset(1, 1),
                        blurRadius: 10.0,
                        color: Color.fromRGBO(0, 0, 0, 0.3),
                        spreadRadius: 10)
                  ],
                ),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Colors.white),
                  prefixIcon: Icon(Icons.email_outlined, color: Colors.white),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          // Password
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(color: Colors.white, width: 3),
                borderRadius: BorderRadius.circular(40),
              ),
              child: TextField(
                style: GoogleFonts.didactGothic(
                  fontSize: 16.0,
                  textStyle: const TextStyle(
                      color: Colors.white,
                      letterSpacing: .5,
                      fontWeight: FontWeight.bold),
                  shadows: [
                    const BoxShadow(
                        offset: Offset(1, 1),
                        blurRadius: 10.0,
                        color: Color.fromRGBO(0, 0, 0, 0.3),
                        spreadRadius: 10)
                  ],
                ),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.white),
                  prefixIcon: Icon(
                    Icons.password,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          //add Create Account button -----------------------------------
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60.0),
            child: SizedBox(
              width: double.infinity,
              height: 50,
              child: RawMaterialButton(
                fillColor: Colors.white,
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                onPressed: () {
                  //after clicking on login button take to homepage
                },
                child: Text(
                  "Create Account",
                  style: GoogleFonts.didactGothic(
                      fontSize: 20.0,
                      textStyle:
                      const TextStyle(color: Color.fromRGBO(83, 146, 252, 1), letterSpacing: .5, fontWeight: FontWeight.bold),
                      shadows: [const BoxShadow(offset: Offset(0,0), blurRadius: 5.0, color: Color.fromRGBO(0, 0, 0, 0.2), spreadRadius: 10)]
                ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
