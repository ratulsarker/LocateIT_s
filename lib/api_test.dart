import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_place/google_place.dart';
import 'package:locate_it/util/app_assets.dart';

class API extends StatefulWidget {
  const API({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _API();
}

class _API extends State<API> {
  final _startSearchFieldController = TextEditingController();
  final _endSearchFieldController = TextEditingController();

  late GooglePlace googlePlace;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    String apiKey = 'AIzaSyB8v_6Y7Nwj3nt8COVoIIcMTZWvBqd-rY8';
    googlePlace = GooglePlace(apiKey);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppAssets.background), fit: BoxFit.fill),
        ),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            // add body
            body: Column(children: [
              TextField(
                controller: _startSearchFieldController,
                autofocus: false,
                style: TextStyle(fontSize: 20),
                onChanged: (value) {
                  if (value.isNotEmpty){
                    // call places api
                  }
                  else{
                    // clerar search
                  }
                },
              ),
            ])));
  }
}
