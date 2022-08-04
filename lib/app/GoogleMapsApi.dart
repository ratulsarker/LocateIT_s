import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class GoogleMapsAPI {
  final String keyAPI = dotenv.get('GOOGLE_PLACES_API_KEY');

  Future getPlaceID(String input) async {
    final String url =
        'https://maps.googleapis.com/maps/api/place/findplacefromtext/json?input=$input&inputtype=textquery&key=$keyAPI';
    var result = await http.get(Uri.parse(url));
    var json = convert.jsonDecode(result.body);
    var placeID = json['candidates'][0]['place_id'] as String;

    return placeID;
  }

  Future<Map<String, dynamic>> getDetails(String input) async {
    final placeId = await getPlaceID(input);
    final String url =
        'https://maps.googleapis.com/maps/api/place/details/json?place_id=$placeId&key=$keyAPI';
    var result = await http.get(Uri.parse(url));
    var json = convert.jsonDecode(result.body);
    var details = json['result'] as Map<String, dynamic>;

    print(details);
    return details;
  }
}
