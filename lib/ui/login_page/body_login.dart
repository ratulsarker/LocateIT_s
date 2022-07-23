import 'package:flutter/material.dart';
import 'package:locate_it/ui/login_page/body_signup.dart';
import 'package:google_fonts/google_fonts.dart';

class BodyLogin extends StatefulWidget {
  const BodyLogin({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BodyLogin();
}

class _BodyLogin extends State<BodyLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 200),
              // Text
              Text(
                'LocateIT',
                style: GoogleFonts.breeSerif(
                  fontSize: 44.0,
                  textStyle:
                      const TextStyle(color: Colors.white, letterSpacing: .5),
                ),
              ),
              const SizedBox(height: 20),

              const Text(
                'Welcome back, you\'ve been missed!',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),

              const SizedBox(height: 20),
              //email textbox for entering the email of user here-----------------------
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    border: Border.all(
                        color: const Color.fromARGB(255, 104, 97, 97)),
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
              const SizedBox(height: 10),
              //password textbox for user to enter their password -------------------
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    border: Border.all(
                        color: const Color.fromARGB(255, 104, 97, 97)),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'password',
                        prefixIcon: Icon(Icons.security_outlined)),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              //sign in button -----------------------------------------------------------
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
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
              ),
              //not a memeber? register now
              const SizedBox(height: 25.0),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const SignupPage())),
                  );
                },
                child: const Text(
                  'Not a member? register now',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),

              //
            ],
          ),
        ),
      ),
      // ema
    );
  }
}
