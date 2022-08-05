import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
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

  Future<String> getImageReference(Future placeId) async {
    String url =
        'https://maps.googleapis.com/maps/api/place/details/json?place_id=$placeId&fields=photo&key=$keyAPI';
    Response placeDetails = await Dio().get(url);
    print(placeDetails);
    return placeDetails.data['result']['photos'][0]['photo_reference'];
  }

  Image getImage(Future placeId) {
    Future imgReference = getImageReference(placeId);
    const int max_width = 400;
    const int max_height = 200;
    final String url =
        'https://maps.googleapis.com/maps/api/place/photo?maxwidth=$max_width&maxheight=$max_height&photo_reference=$imgReference&key=$keyAPI';
    return Image.network(url);
  }
}
