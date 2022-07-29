import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:locate_it/ui/signup_page/body_signup.dart';

import '../../util/app_assets.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPage();
}

class _SignUpPage extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppAssets.background), fit: BoxFit.fill),
        ),
        child: const Scaffold(
            backgroundColor: Colors.transparent,
            body: BodySignUp()));
  }
}
