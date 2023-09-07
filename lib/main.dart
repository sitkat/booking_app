import 'package:booking_app/hotel_screen.dart';
import 'package:booking_app/slider_loading.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

void main() {
  // await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HotelScreen(),
    );
  }
}
