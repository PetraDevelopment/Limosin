import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../apis/limousine_api.dart';
import '../../models/log_in_model.dart';
import '../home/home_screen.dart';
import '../on_boarding_screens/first_step_screen.dart';

class LogInController extends GetxController {
  LimousineApi limousineApi = LimousineApi();
  var LogIn = LogInModel().obs;
  bool isLoading = true;

  TextEditingController phoneIogInController = TextEditingController();
  TextEditingController emailIogInController = TextEditingController();
  TextEditingController passwordIogInController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    // fetchLogIn();
  }

  void fetchLogIn() async {
    var responseLogIn = await limousineApi.getLogIn(
        emailIogInController.text,
        passwordIogInController.text,
        passwordIogInController.text,
        "token_id",
        "os_type",
        "os_version",
        "device_type",
        "app_version",
        "fcm_token_id");

    LogIn.value = LogInModel.fromJson(responseLogIn);

    LogIn.value.status == 200
        ? LogIn.value.message?.errorMsg == "login_successfully"
            ? {
                userData.write(
                    'profilePhoto', LogIn.value.message?.photoV.toString()),
                userData.write('first_name', LogIn.value.message?.firstNameV.toString()),
                userData.write('last_name', LogIn.value.message?.lastNameV.toString()),
                userData.write('email', LogIn.value.message?.useremailV.toString()),
                userData.write('phone', LogIn.value.message?.phoneV.toString()),
                userData.write('userId', LogIn.value.message?.idV.toString()),
                userData.write('userIsloggedIn', true),

                Get.snackbar(
                  '',
                  LogIn.value.message!.errorMsg.toString(),
                  colorText: Colors.black,
                  backgroundColor: Colors.greenAccent,
                ),
                Get.offAll(HomeScreen()),
              }
            : Get.snackbar(
                '',
                LogIn.value.message!.errorMsg.toString(),
                colorText: Colors.black,
                backgroundColor: Colors.red,
              )
        : Get.snackbar(
            '',
            LogIn.value.message,
            colorText: Colors.black,
            backgroundColor: Colors.red,
          );

    print('respone');
    print(responseLogIn);
    if (responseLogIn != null) {
      print('respone');
      print(responseLogIn);
      print(LogInModel.fromJson(responseLogIn).message);
      isLoading = false;
      update();
    }
  }
}
