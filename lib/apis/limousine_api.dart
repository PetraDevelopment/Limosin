
import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:dio/dio.dart';

import '../screens/on_boarding_screens/first_step_screen.dart';
import '../utils/constants.dart';
import 'package:http/http.dart' as http;
import 'package:async/async.dart';
import 'package:path/path.dart';
//////




class LimousineApi {
  final dio = Dio(BaseOptions(baseUrl: apiBaseUrl));

  Future<dynamic> getRegister(
    String first_name,
    String last_name,
    String phone,
    String email,
    int password,
    String token_id,
    String os_type,
    String os_version,
    String device_type,
    String app_version,
    String fcm_token_id,
  ) async {
    final Map<String, dynamic> userData = {
      "first_name_v": first_name,
      "last_name_v": last_name,
      "phone_v": phone,
      "email_v": email,
      "password_v": password,
      "token_id_v": "",
      "os_type_v": "",
      "os_version_v": "",
      "device_type_v": "",
      "app_version_v": "",
      "fcm_token_id_v": ""
    };
    final response = await dio.post(
      '/customer_register.php',
      data: userData,
    );
    if (response.statusCode == 200) {
      return response.data;
    } else {
      return null;
    }
  }
///////////////////////////////////////
  Future<dynamic> getLogIn(
    String email_v,
    String phone_v,
    String password_v,
    String token_id,
    String os_type,
    String os_version,
    String device_type,
    String app_version,
    String fcm_token_id,
  ) async {
    final Map<String, dynamic> LogInData = {
      "email_v": email_v,
      "password_v": password_v,
      "phone_v": phone_v,
      "token_id_v": token_id,
      "os_type_v": os_type,
      "os_version_v": os_version,
      "device_type_v": device_type,
      "app_version_v": app_version,
      "fcm_token_id_v": fcm_token_id,
    };
    final response = await dio.post(
      '/customer_login.php',
      data: LogInData,
    );
    if (response.statusCode == 200) {
      return response.data;
    } else {
      return null;
    }
  }

/////////////////////////////////////////
  Future<dynamic> getChangePassword(
      String id_v,
      String old_password_v,
      String new_password_v,

      ) async {
    FormData formData = FormData.fromMap({
      "id_v": id_v,
      "old_password_v": old_password_v,
      "new_password_v": new_password_v,
    });
    final response = await dio.post(
      '/customer_password_update.php',
      data: formData,
    );
    if (response.statusCode == 200) {
      return response.data;
    } else {
      return null;
    }
  }


  //////////////////////////
  Future<dynamic> getProfileImageUpdateResponse(var filesource) async {
    print('filesource$filesource');
    print('filesource${filesource.runtimeType}');

    // Get bytes from the file
    var bytes = await filesource.readAsBytes();

    // Create multipart form data
    FormData formData = FormData.fromMap({
      "photo_v": await MultipartFile.fromBytes(
        bytes,
        filename: basename(filesource.path),
      ),
      "id_v": userData.read('userId'),
    });

    // Send the request using dio.post
    var response = await dio.post(
      '/customer_photo_update.php',
      data: formData,
    );

    // Read response
    var responseData = response.data;
    print(response.statusCode);
    print(responseData); // Print response data

    if (response.statusCode == 200) {
      return responseData;
    } else {
      return null;
    }
  }
/////////////////////////////////////////
  Future<dynamic> getDeleteAccount(
      String id_v,
      ) async {

    final response = await dio.delete(
      '/customer_delete.php?id=$id_v',

    );
    if (response.statusCode == 200) {
      return response.data;
    } else {
      return null;
    }
  }
  /////////////////////////////////////////
  Future<dynamic> getAddCar(
      String model, String description, String number, String passengers_num, String luggage_count, String driver_id, String color, String type,var fileImageCar
      ) async {
    var bytes = await fileImageCar.readAsBytes();

    FormData formData = FormData.fromMap({
      "model": model,
      "description": description,
      "number": number,
      "color": color,
      "type": type,
      "passengers_num": passengers_num,
      "luggage_count": luggage_count,
      "driver_id": driver_id,
      "file": await MultipartFile.fromBytes(
        bytes,
        filename: basename(fileImageCar.path),
      ),

    });
    final response = await dio.post(
      '/car_insert.php',
      data: formData,
    );
    if (response.statusCode == 200) {
      return response.data;
    } else {
      return null;
    }
  }
  /////////////////////////////////////////
  Future<dynamic> getCarDetails(
      String id,
      ) async {

    final response = await dio.get(
      '/car_search.php?id=$id',

    );
    if (response.statusCode == 200) {
      return response.data;
    } else {
      return null;
    }
  }

  /////////////////////////////////////////
  Future<dynamic> getRideDetails(
      String customer_id, String car_id,  String passengers_num, String luggage_count, String pick_up_location, String drop_off_location,
      String type, String pick_up_date, String pick_up_time, String return_date,String return_time,
      ) async {

    FormData formData = FormData.fromMap({
      "customer_id": customer_id,
      "car_id": car_id,
      "type": type,
      "pick_up_location": pick_up_location,
      "drop_off_location": drop_off_location,
      "pick_up_date": pick_up_date,
      "pick_up_time": pick_up_time,
      "return_date": return_date,
      "return_time":return_time,
      "passengers_num":passengers_num,
      "luggage_count":luggage_count,

    });
    final response = await dio.post(
      '/trip_insert.php',
      data: formData,
    );
    if (response.statusCode == 200) {
      return response.data;
    } else {
      return null;
    }
  }

  ///////////////////////////////////////
  Future<dynamic> getAvailableCar(
      int type_v,
      String pick_up_date_v,
      String pick_up_time_v,
      String return_date_v,
      String return_time_v,
      ) async {
print("object"+type_v.toString());
    final Map<String, dynamic> AvailableCarData = {
      "type_v": type_v,
      "pick_up_date_v": pick_up_date_v,
      "pick_up_time_v": pick_up_time_v,
      "return_date_v": return_date_v,
      "return_time_v": return_time_v,

    };
    final response = await dio.post(
      '/avalibel_car.php',
      data: AvailableCarData,
    );
    if (response.statusCode == 200) {
      return response.data;
    } else {
      return null;
    }
  }



  /////////////////////////////////////////
  Future<dynamic> getCarLimit() async {

    final response = await dio.get(
      '/car_search_limit.php',

    );
    if (response.statusCode == 200) {
      return response.data;
    } else {
      return null;
    }
  }

  /////////////////////////////////////////
  Future<dynamic> getAllCars(

      ) async {

    final response = await dio.get(
      '/car_search.php',

    );
    if (response.statusCode == 200) {
      return response.data;
    } else {
      return null;
    }
  }


}
