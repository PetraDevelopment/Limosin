
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../apis/limousine_api.dart';
import '../../models/available_car_model.dart';
import '../available_car/available_cars_screen.dart';


class RideDetailsController extends GetxController {
  LimousineApi limousineApi = LimousineApi();
  // var RideDetails = RideDetailsModel().obs;
  var AvailableCar = AvailableCarModel().obs;
  // bool isLoading = true;
  int? selectedOption=1;
  // String? id_car= Get.arguments[0];
  TextEditingController pickuplocationController = TextEditingController();
  TextEditingController dropofflocationController = TextEditingController();
  TextEditingController pickupdateController = TextEditingController();
  TextEditingController pickuptimeController = TextEditingController();
  TextEditingController returndateController = TextEditingController();
  TextEditingController returntimeController = TextEditingController();
  int? passengers_num=1;
  int?   luggage_count=1;

  @override
  void onInit() {
    super.onInit();
  }

  // void fetchRideDetails() async {
  //
  //   var response = await limousineApi.getRideDetails(
  //       userData.read('userId'),
  //       "id_car!",
  //       passengers_num!.toString(),
  //       luggage_count!.toString(),
  //       pickuplocationController.text,
  //       dropofflocationController.text,
  //       selectedOption.toString(),
  //       pickupdateController.text,
  //       pickuptimeController.text,
  //       returndateController.text,
  //       returntimeController.text,);
  //   print('fetchRideDetails');
  //   print(userData.read('userId')+ "id_car!"+
  //     passengers_num!.toString()+
  //     luggage_count!.toString()+
  //     pickuplocationController.text+
  //     dropofflocationController.text+
  //     selectedOption.toString()+
  //     pickupdateController.text+
  //     pickuptimeController.text+
  //     returndateController.text+
  //     returntimeController.text);
  //
  //   RideDetails.value = RideDetailsModel.fromJson(response);
  //   if (RideDetails.value.msg == "Inserted_Successfully") {
  //
  //     Get.to(AddSuccessfullyScreen(RideDetails.value.msg));
  //   } else {
  //     Get.snackbar(
  //       '',
  //       RideDetails.value.msg.toString(),
  //       colorText: Colors.black,
  //       backgroundColor: Colors.red,
  //       // icon: const Icon(Icons.add_alert),
  //     );
  //   }
  //
  //   print('respone');
  //   print(response);
  //   if (response != null) {
  //     print('respone');
  //     print(response);
  //     print(RideDetailsModel.fromJson(response).msg);
  //     isLoading = false;
  //     update();
  //   }
  // }
  void fetchAvailableCar() async {
    var response = await limousineApi.getAvailableCar(
      selectedOption!,
      pickupdateController.text,
      pickuptimeController.text,
      returndateController.text,
      returntimeController.text,
    );
    print('responeeee'+   selectedOption.toString()+
      pickupdateController.text+
      pickuptimeController.text+
      returndateController.text+
      returntimeController.text);


   // AvailableCar.value = AvailableCarModel.fromJson(response);
   //  if(response != null){
   //    AvailableCarData.addAll(AvailableCarModel.fromJson(response).data!);
   //    isLoading = false;
   //    Get.to(AvailableCarsScreen());
   //    update();
   //  }
   //
   //  print(response);
    AvailableCar.value = AvailableCarModel.fromJson(response);

    if (AvailableCar.value.status == 200) {
      Get.to(AvailableCarsScreen(AvailableCar.value.data));

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
    print(AvailableCar.value.status);
    if (response != null) {
      print('respone');
      print(response);

      // isLoading = false;
      update();
    }

  }
}
