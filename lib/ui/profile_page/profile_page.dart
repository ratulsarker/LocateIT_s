import 'package:flutter/material.dart';
import 'package:locate_it/ui/profile_page/body_profile.dart';

import '../../util/app_assets.dart';

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
          image: DecorationImage(
            image: AssetImage(AppAssets.background),
            fit: BoxFit.fill
            ) ,
        ),
        child: const Scaffold(
            backgroundColor: Colors.transparent,
            // add body
            body: BodyProfile()));
  }
}
