import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:locate_it/app/GoogleMapsApi.dart';
import 'package:locate_it/app/search.dart';
import 'package:locate_it/ui/details_page/details_page.dart';
import '../profile_page/profile_page.dart';

String locate = "";

class BodyHome extends StatefulWidget {
  const BodyHome({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BodyHome();
}

class _BodyHome extends State<BodyHome> {
  Search searchLocation = Search();
  GoogleMapsAPI google_api = new GoogleMapsAPI();
  TextEditingController _searchController = TextEditingController();
  late var location;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      //GoogleMapsAPI().getImage(google_api.getPlaceID('Toronto')),
      // Profile Icon
      Container(
        padding: const EdgeInsets.only(left: 340, top: 40),
        child: IconButton(
          iconSize: 40,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: ((context) => const ProfilePage())));
          },
          icon: const Icon(Icons.person),
          color: Colors.white,
        ),
      ),
      // Search bar -> UNFINISHED
      Container(
        width: 350,
        padding: const EdgeInsets.fromLTRB(20, 40, 30, 0),
        alignment: Alignment.topLeft,
        child: Column(
          children: [
            Autocomplete(optionsBuilder: (TextEditingValue textEditingValue) {
              if (textEditingValue.text.isEmpty) {
                return const Iterable<String>.empty();
              } else {
                return searchLocation.destinations.where((word) => word
                    .toLowerCase()
                    .contains(textEditingValue.text.toLowerCase()));
              }
            }, fieldViewBuilder:
                (context, textEditingController, focusNode, onFieldSubmitted) {
              return TextField(
                  controller: textEditingController,
                  focusNode: focusNode,
                  onEditingComplete: onFieldSubmitted,
                  cursorColor: Colors.white,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    prefixIconColor: Colors.white,
                    hintText: "Search",
                    hintStyle: const TextStyle(color: Colors.white),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.white, width: 4.0),
                        borderRadius: BorderRadius.circular(20)),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.white, width: 4.0),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  onSubmitted: ((value) {
                    //google_api
                    //  .getImageReference(google_api.getPlaceID('Toronto'));
                    location =
                        google_api.getDetails(textEditingController.text);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => DetailsPage(location)),
                        ));
                  }));
            }),
          ],
        ),
      ),
      // Text
      Container(
          padding: const EdgeInsets.fromLTRB(25, 115, 0, 0),
          child: const Text(
            "Recommended Locations",
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
          )),
    ]);
  }
}
