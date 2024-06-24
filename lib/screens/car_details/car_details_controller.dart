import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../apis/limousine_api.dart';
import '../../models/add_car_model.dart';
import '../../models/car_details_model.dart';
import '../add_successfully_screen.dart';
import '../on_boarding_screens/first_step_screen.dart';
import '../profile/profile_screen.dart';

class CarDetailsController extends GetxController {
  LimousineApi limousineApi = LimousineApi();
  var CarDetails = CarDetailsModel().obs;
  bool isLoading = true;

//String? id_car= Get.arguments[0];
  String? id_car = Get.arguments?[0] as String?;


  @override
  void onInit() {
    super.onInit();
    if (id_car != null) {
      fetchCarDetails();
    }
    fetchAllCas();

  }

  void fetchCarDetails() async {

    var response = await limousineApi.getCarDetails(
        id_car!);
    print('fetchCarDetails');


    CarDetails.value = CarDetailsModel.fromJson(response);
    if (CarDetails.value.status == "200") {
      print('fetchCarDetails');
     // Get.to(AddSuccessfullyScreen());
    } else {
      // Get.snackbar(
      //   '',
      //   CarDetails.value.msg.toString(),
      //   colorText: Colors.black,
      //   backgroundColor: Colors.red,
      //   // icon: const Icon(Icons.add_alert),
      // );
    }

    print('respone');
    print(response);
    if (response != null) {
      print('respone');
      print(response);
      print(CarDetailsModel.fromJson(response).status);
      isLoading = false;
      update();
    }
  }
  void fetchAllCas() async {

    var response = await limousineApi.getAllCars(
    );
    print('fetchAllCas');


    CarDetails.value = CarDetailsModel.fromJson(response);
    if (CarDetails.value.status == "200") {
      print('fetchAllCas');
     // Get.to(AddSuccessfullyScreen());
    } else {
      // Get.snackbar(
      //   '',
      //   CarDetails.value.msg.toString(),
      //   colorText: Colors.black,
      //   backgroundColor: Colors.red,
      //   // icon: const Icon(Icons.add_alert),
      // );
    }

    print('respone');
    print(response);
    if (response != null) {
      print('respone');
      print(response);
      print(CarDetailsModel.fromJson(response).status);
      isLoading = false;
      update();
    }
  }
}
