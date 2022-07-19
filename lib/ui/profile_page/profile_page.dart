import 'package:flutter/material.dart';
import 'package:locate_it/ui/profile_page/body_profile.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ProfilePage();
}

class _ProfilePage extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [Colors.cyanAccent, Colors.blueAccent],
        )),
        child:
            const Scaffold(backgroundColor: Colors.transparent, body: Body()));
  }
}
