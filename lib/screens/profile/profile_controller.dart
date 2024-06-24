import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:limousine/screens/home/home_screen.dart';
import '../../apis/limousine_api.dart';
import '../../helper/auth_helper.dart';
import '../../models/profile_model.dart';
import '../on_boarding_screens/first_step_screen.dart';

class ProfileController extends GetxController {
  LimousineApi limousineApi = LimousineApi();
  var Profile = ProfileModel().obs;
  bool isLoading = true;

     File? image_;

  @override
  void onInit() {
    super.onInit();
    // fetchProfile();
  }


  void fetchProfileImageUpdate() async {
    var response = await limousineApi.getProfileImageUpdateResponse(

      image_!,
    );
    print('responeeee');
    print('No image selected.'+ image_.toString());

    Profile.value = ProfileModel.fromJson(response);
    if(Profile.value.msg == "Updated_Successfully"){
      userData.write('profilePhoto', image_);

      Get.snackbar(
        '',
        Profile.value.msg.toString(),
        colorText: Colors.black,
        backgroundColor: Colors.greenAccent,
        // icon: const Icon(Icons.add_alert),
      );

    }else{
      Get.snackbar(
        '',
        Profile.value.msg.toString(),
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
      print(ProfileModel.fromJson(response).msg);
      isLoading = false;
      update();
    }
  }

  void fetchProfileDeleteAccount() async {
    var response = await limousineApi.getDeleteAccount(

      userData.read('userId'),
    );
    print('responeeee');
    print('No image selected.'+ image_.toString());

    Profile.value = ProfileModel.fromJson(response);
    if(Profile.value.msg == "deleted successfully."){
      AuthHelper()
          .clearUserData();
      Get.offAll(
          const FirstStepScreen());

      Get.snackbar(
        '',
        Profile.value.msg.toString(),
        colorText: Colors.black,
        backgroundColor: Colors.greenAccent,
        // icon: const Icon(Icons.add_alert),
      );

    }else{
      Get.snackbar(
        '',
        Profile.value.msg.toString(),
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
      print(ProfileModel.fromJson(response).msg);
      isLoading = false;
      update();
    }
  }
}
