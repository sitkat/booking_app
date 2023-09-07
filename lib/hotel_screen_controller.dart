import 'dart:convert';

import 'package:booking_app/hotel.dart';
import 'package:booking_app/main_app_config.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HotelScreenController extends GetxController {
  var box = GetStorage();
  var isLoading = false;
  Hotel hotelData = [];

  @override
  void onInit() {
    fetchHotel();
    if (box.read('hotelData') != null) {
      hotelData.assignAll(box.read('hotelData'));
    }
    super.onInit();
  }

  void fetchHotel() async {
    try {
      isLoading = true;
      update();

      List<Hotel> data = await MainAppConfig.fetchHotelData();
      if (data != null) {
        hotelData.assignAll(data);
        box.write('hotelData', data);
      }
    } finally {
      isLoading = false;
      update();
      if (kDebugMode) {
        print('data fetch done');
      }
    }
  }
}
