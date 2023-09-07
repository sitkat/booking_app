import 'dart:convert';

import 'package:booking_app/hotel.dart';
import 'package:http/http.dart';

class MainAppConfig {
  static var client = Client();

  static Future<dynamic> fetchHotelData() async {
    try {
      var response = await client.get(Uri.parse(
          'https://run.mocky.io/v3/35e0d18e-2521-4f1b-a575-f0fe366f66e3'));
      if (response.statusCode == 200) {
        // return decode(response.body);
        return hotelFromJson(response.body);
      }
      return null;
    } catch (e) {
      return null;
    }
  }

  static List<Hotel> decode(String tasks) {
    var data = (jsonDecode(tasks) as List<dynamic>?);
    if(data != null){
      return (jsonDecode(tasks) as List<dynamic>?)!.map<Hotel>((task) {
        return Hotel.fromJson(task);
      }).toList();
    } else {
      return <Hotel>[];
    }
  }
}
