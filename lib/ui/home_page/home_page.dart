import 'package:flutter/material.dart';
import 'package:locate_it/ui/home_page/body_home.dart';
import 'package:locate_it/util/app_assets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssets.background),
            fit: BoxFit.fill
            ) ,
        ),
        child: const Scaffold(
            backgroundColor: Colors.transparent,
            // add body
            body: BodyHome()));
  }
}
