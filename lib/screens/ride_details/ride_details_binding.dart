import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';


import 'Ride_details_controller.dart';



class RideDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RideDetailsController());
  }
}