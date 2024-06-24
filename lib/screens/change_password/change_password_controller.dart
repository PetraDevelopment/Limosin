import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:limousine/screens/home/home_screen.dart';

import '../../apis/limousine_api.dart';

import '../../models/change_password_model.dart';
import '../on_boarding_screens/first_step_screen.dart';
import '../profile/profile_screen.dart';

class ChangePasswordController extends GetxController {
  LimousineApi limousineApi = LimousineApi();
  var ChangePassword = ChangePasswordModel().obs;
  bool isLoading = true;

  TextEditingController oldpasswordController = TextEditingController();
  TextEditingController newpasswordController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    // fetchChangePassword();
  }

  void fetchChangePassword() async {
    var response = await limousineApi.getChangePassword(
        userData.read('userId'),
      oldpasswordController.text,
      newpasswordController.text,
      );
    print('fetchChangePassword');
    print( userData.read('userId'));

    ChangePassword.value = ChangePasswordModel.fromJson(response);
    if(ChangePassword.value.msg == "Updated_Successfully"){

   Get.to(ProfileScreen());

    }else{
      Get.snackbar(
        '',
        ChangePassword.value.msg.toString(),
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
      print(ChangePasswordModel.fromJson(response).msg);
      isLoading = false;
      update();
    }
  }
}
