import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
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
  List<AutocompletePrediction> predictions = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    String apiKey = dotenv.get('GOOGLE_PLACES_API_KEY');
    googlePlace = GooglePlace(apiKey);
  }

  void autoCompleteSearch(String value) async {
    var result = await googlePlace.autocomplete.get(value);
    if (result != null && result.predictions != null) {
      print(result.predictions!.first.description);
      setState(() {
        predictions = result.predictions!;
      });
    } else {
      print('yes');
    }
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
                style: const TextStyle(fontSize: 20),
                decoration: const InputDecoration(hintText: 'Search'),
                onChanged: (value) {
                  if (value.isNotEmpty) {
                    // call places api
                    autoCompleteSearch(value);
                  } else {
                    // clerar search
                  }
                },
              ),
            ])));
  }
}

