import 'package:flutter/material.dart';
import 'util/app_assets.dart';

class MyFavPage extends StatefulWidget {
  const MyFavPage({Key? key}) : super(key: key);

  @override
  State<MyFavPage> createState() => _MyFavPageState();
}

class _MyFavPageState extends State<MyFavPage> {
  @override
  Widget build(BuildContext context) {
    return const Image(
      image: AssetImage(AppAssets.testimage),
    );
  }
}
