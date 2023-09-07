import 'package:booking_app/hotel_screen_controller.dart';
import 'package:booking_app/slider_loading.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<HotelScreenController>(
        init: HotelScreenController(),
        builder: (builder) {
          if (builder.isLoading) {
            return const SliderLoading();
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
