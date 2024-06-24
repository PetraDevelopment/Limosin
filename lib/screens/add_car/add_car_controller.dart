import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../apis/limousine_api.dart';
import '../../models/add_car_model.dart';
import '../add_successfully_screen.dart';
import '../on_boarding_screens/first_step_screen.dart';
import '../profile/profile_screen.dart';

class AddCarController extends GetxController {
  LimousineApi limousineApi = LimousineApi();
  var AddCar = AddCarModel().obs;
  bool isLoading = true;

  TextEditingController colorController = TextEditingController();
  TextEditingController modelController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  File? imageCar;
  int? passengers_num=1;
  int?   luggage_count=1;
  String? type;

  @override
  void onInit() {
    super.onInit();
  }

  void fetchAddCar() async {
    //String model, String description, String number,  passengers_num, int luggage_count, String driver_id, String color, String type,var fileImageCar
    var response = await limousineApi.getAddCar(
        modelController.text,
        descriptionController.text,
        numberController.text,
        passengers_num!.toString(),
        luggage_count!.toString(),
        userData.read('userId'),
        colorController.text,
        "1",
        imageCar);
    print('fetchAddCar');
    print(modelController.text+ descriptionController.text+numberController.text+
        passengers_num!.toString()+ luggage_count!.toString()+colorController.text+imageCar.toString());

    AddCar.value = AddCarModel.fromJson(response);
    if (AddCar.value.msg == "Inserted_Successfully") {

      Get.to(AddSuccessfullyScreen(AddCar.value.data));
    } else {
      Get.snackbar(
        '',
        AddCar.value.msg.toString(),
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
      print(AddCarModel.fromJson(response).msg);
      isLoading = false;
      update();
    }
  }
}
