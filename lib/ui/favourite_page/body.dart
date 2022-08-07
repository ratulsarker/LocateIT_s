import 'package:flutter/cupertino.dart';
import 'package:locate_it/ui/favourite_page/favourites_page.dart';

import '../../util/app_assets.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.only(top: 0, left: 10, right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyFavPage(
                  imagePath: AppAssets.whaleWhatching,
                  subtitle: 'Whale Watching Tour',
                  title: 'Family, photography',
                  hours: '5',
                  price: '89',
                  details: 'Transportation, sneaks',
                  reviews: '230',
                  rating: 4.0,
                  ratings: '9',
                ),
                MyFavPage(
                  imagePath: AppAssets.riffelseeHiking,
                  subtitle: 'Riffelsee hiking',
                  title: 'Hiking, photography',
                  hours: '5',
                  price: '50',
                  details: 'Transportation included',
                  reviews: '120',
                  rating: 3.9,
                  ratings: '8',
                ),
              ],
            )));
  }
}
