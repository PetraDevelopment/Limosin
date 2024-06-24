import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:limousine/screens/home/home_screen.dart';

import '../../apis/limousine_api.dart';
import '../../models/register_model.dart';
import '../on_boarding_screens/first_step_screen.dart';

class RegisterController extends GetxController {
  LimousineApi limousineApi = LimousineApi();
  var Register = RegisterModel().obs;
  bool isLoading = true;
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    // fetchRegister();
  }

  void fetchRegister() async {
    var response = await limousineApi.getRegister(
        firstnameController.text,
        lastnameController.text,
        phoneController.text,
        emailController.text,
        int.parse(passwordController.text),
        "token_id",
        "os_type",
        "os_version",
        "device_type",
        "app_version",
        "fcm_token_id");
    print('responeeee');
    print(firstnameController.text+ lastnameController.text+phoneController.text);

    Register.value = RegisterModel.fromJson(response);
    if(Register.value.msg == "Registered_Successfully"){
      userData.write('userIsloggedIn', true);
      Get.offAll(HomeScreen());

    }else{
   Get.snackbar(
        '',
        Register.value.msg.toString(),
        colorText: Colors.black,
        backgroundColor: Colors.red,
        // icon: const Icon(Icons.add_alert),
      );
    }


    print('respone');
    print(response);
    if (response != null) {
      print('respone');
      print(response);
      print(RegisterModel.fromJson(response).msg);
      isLoading = false;
      update();
    }
  }
}
