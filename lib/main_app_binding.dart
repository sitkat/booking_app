import 'package:booking_app/hotel_screen.dart';
import 'package:booking_app/hotel_screen_controller.dart';
import 'package:get/get.dart';

class MainAppBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<HotelScreenController>(() => HotelScreenController());
  }
}