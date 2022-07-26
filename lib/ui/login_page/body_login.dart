import 'package:flutter/material.dart';
import 'package:locate_it/ui/login_page/body_signup.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../authentication_service.dart';
import '../../util/app_assets.dart';

class BodyLogin extends StatefulWidget {
  const BodyLogin({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BodyLogin();
}

class _BodyLogin extends State<BodyLogin> {
  // creating controllers for email and password
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 60),
              // Text
              const Image(
                image: AssetImage(AppAssets.logo),
              ),
              const SizedBox(height: 0),

              Text(
                'Welcome back, you\'ve been missed!',
                style: GoogleFonts.didactGothic(
                  fontSize: 18.0,
                  textStyle:
                      const TextStyle(color: Colors.white, letterSpacing: .5, fontWeight: FontWeight.bold),
                  shadows: [const BoxShadow(offset: Offset(1,1), blurRadius: 10.0, color: Color.fromRGBO(0, 0, 0, 0.3), spreadRadius: 10)]
                ),
              ),

              const SizedBox(height: 20),
              //email textbox for entering the email of user here-----------------------
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(
                        color: Colors.white, width: 3),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: TextField(
                    controller: emailController,
                    style: GoogleFonts.didactGothic(
                      fontSize: 16.0,
                      textStyle:
                      const TextStyle(color: Colors.white, letterSpacing: .5, fontWeight: FontWeight.bold),
                      shadows: [const BoxShadow(offset: Offset(1,1), blurRadius: 10.0, color: Color.fromRGBO(0, 0, 0, 0.3), spreadRadius: 10)]
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
              //password textbox for user to enter their password -------------------
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(
                        color: Colors.white, width: 3),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: TextField(
                    controller: passwordController,
                    style: GoogleFonts.didactGothic(
                      fontSize: 16.0,
                      textStyle:
                      const TextStyle(color: Colors.white, letterSpacing: .5, fontWeight: FontWeight.bold),
                      shadows: [const BoxShadow(offset: Offset(1,1), blurRadius: 10.0, color: Color.fromRGBO(0, 0, 0, 0.3), spreadRadius: 10)]
                ),
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password',
                         hintStyle: TextStyle(color: Colors.white),
                        prefixIcon: Icon(Icons.password, color: Colors.white)),
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
                    fillColor: Colors.white,
                    elevation: 4.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    onPressed: () {
                      //after clicking on login button take to homepage
                      context.read<AuthenticationService>().signIn(
                            email: emailController.text,
                            password: passwordController.text,
                          );
                    },
                    child: Text(
                      "Log In",
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
              //not a memeber? register now
              const SizedBox(height: 15.0),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const SignupPage())),
                  );
                },
                child: Text(
                  'Not a member? Register now',
                  style: GoogleFonts.didactGothic(
                      fontSize: 16.0,
                      textStyle:
                      const TextStyle(color: Colors.white, letterSpacing: .5, fontWeight: FontWeight.bold),
                      shadows: [const BoxShadow(offset: Offset(2.0,2.0), blurRadius: 10.0, color: Color.fromRGBO(0, 0, 0, 0.3), spreadRadius: 10)]
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
