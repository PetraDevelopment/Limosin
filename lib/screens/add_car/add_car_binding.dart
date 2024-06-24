import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

import 'add_car_controller.dart';

class AddCarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddCarController());
  }
}