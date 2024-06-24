
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../apis/limousine_api.dart';
import '../../models/available_car_model.dart';

class HomeController extends GetxController {
  LimousineApi limousineApi = LimousineApi();
  var Home = AvailableCarModel().obs;
  bool isLoading = true;


  @override
  void onInit() {
    super.onInit();
    fetchHome();

  }

  void fetchHome() async {

    var response = await limousineApi.getCarLimit();
    print('fetchHome');


    Home.value = AvailableCarModel.fromJson(response);
    if (Home.value.status == "200") {
      print('fetchHome');

    } else {

    }

    print('respone');
    print(response);
    if (response != null) {
      print('respone');
      print(response);
      print(AvailableCarModel.fromJson(response).status);
      isLoading = false;
      update();
    }
  }
}