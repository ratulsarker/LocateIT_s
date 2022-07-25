import 'dart:ffi';

import 'package:flutter/material.dart';
import '../../util/app_assets.dart';

class MyFavPage extends StatefulWidget {
  final String title;
  final String hours;
  final String details;
  final String ratings;
  final String reviews;
  final String imagePath;

  const MyFavPage({
    Key? key,
    required this.title,
    required this.hours,
    required this.details,
    required this.ratings,
    required this.reviews,
    required this.imagePath,
  }) : super(key: key);

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
