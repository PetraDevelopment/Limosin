import 'package:get/get.dart';
import 'package:limousine/screens/change_password/change_password_controller.dart';





class ChangePasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChangePasswordController());
  }
}