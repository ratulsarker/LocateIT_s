import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Column(
        children: [
          const SizedBox(height: 80),
          Text(
            'LocateIT SIGNUP',
            style: GoogleFonts.breeSerif(
              fontSize: 44.0,
              textStyle:
                  const TextStyle(color: Colors.white, letterSpacing: .5),
            ),
          ),

          const SizedBox(height: 60),
          // email sign up--------------------------------------------
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                border:
                    Border.all(color: const Color.fromARGB(255, 104, 97, 97)),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'First Name',
                  prefixIcon: Icon(Icons.person_add),
                ),
              ),
            ),
          ),
          // password entering in the signup page-----------------------------
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                border:
                    Border.all(color: const Color.fromARGB(255, 104, 97, 97)),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Last Name',
                  prefixIcon: Icon(Icons.person_add_alt_1_outlined),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                border:
                    Border.all(color: const Color.fromARGB(255, 104, 97, 97)),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Email',
                  prefixIcon: Icon(Icons.email_outlined),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                border:
                    Border.all(color: const Color.fromARGB(255, 104, 97, 97)),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Password',
                  prefixIcon: Icon(Icons.security_rounded),
                ),
              ),
            ),
          ),
          const SizedBox(height: 40),
          //add Create Account button -----------------------------------
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60.0),
            child: SizedBox(
              width: double.infinity,
              height: 50,
              child: RawMaterialButton(
                fillColor: Colors.cyan,
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                onPressed: () {
                  //after clicking on login button take to homepage
                },
                child: const Text(
                  "Create Account",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
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
