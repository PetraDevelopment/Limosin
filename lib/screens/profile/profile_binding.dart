import 'package:get/get.dart';
import 'package:limousine/screens/profile/profile_controller.dart';


import '../log_in/log_in_controller.dart';


class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileController());
  }
}