import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../util/app_assets.dart';

class DetailsPage extends StatefulWidget {
  late Future location;
  DetailsPage(Future location, {Key? key}) : super(key: key) {
    this.location = location;
  }

  @override
  State<StatefulWidget> createState() => _DetailsPage(location);
}

class _DetailsPage extends State<DetailsPage> {
  late Future location_id;
  _DetailsPage(Future location) {
    this.location_id = location;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppAssets.background), fit: BoxFit.fill),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          // add body
          body: Column(
            children: [
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.only(left: 200),
                child: const Text(
                  "Works",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
            ],
          ),
        ));
  }
}
