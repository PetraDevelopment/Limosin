import 'package:get/get.dart';
import 'package:limousine/screens/register/register_controller.dart';

import '../log_in/log_in_controller.dart';


class RegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LogInController());
  }
}