import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // static Future<User> loginUsingEmailPassword(required String email, required String password,required BuildContext context async){
  //   Firebase auth = FirebaseAuth.instance;
  //   User? user;
  //   try{
  //     UserCredential userCredential = await auth.signInWithEmailandPassword(email: email, pasword: password);
  //     user = userCredential.user;
  //   }on FirebaseAuthException catch(e){
  //     if(e.code == "user-bot-found"){
  //       print("No user found for that email");

  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [Colors.cyanAccent, Colors.blueAccent],
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 200),
                // Text
                const Text(
                  'LocateIT',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
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
                      onPressed: () {},
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
                const Text(
                  'Not a member? register now',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
        // ema
      ),
    );
  }
}
