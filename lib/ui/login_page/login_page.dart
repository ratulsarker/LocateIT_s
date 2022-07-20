import 'package:flutter/material.dart';
import 'package:locate_it/ui/login_page/body_login.dart';

import '../../util/app_assets.dart';

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
          image: DecorationImage(
            image: AssetImage(AppAssets.background),
            fit: BoxFit.fill
            ) ,
        ),
        child: const Scaffold(
            backgroundColor: Colors.transparent,
            // add body
            body: BodyLogin()));
  }
}
