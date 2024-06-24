import 'dart:convert';

CarDetailsModel carDetailsModelFromJson(String str) => CarDetailsModel.fromJson(json.decode(str));

String carDetailsModelToJson(CarDetailsModel data) => json.encode(data.toJson());

class CarDetailsModel {
  List<Data>? data;
  int? status;

  CarDetailsModel({
    this.data,
 this.status,
  });

  factory CarDetailsModel.fromJson(Map<String, dynamic> json) => CarDetailsModel(
    data: List<Data>.from(json["data"].map((x) => Data.fromJson(x))),
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data!.map((x) => x.toJson())),
    "status": status,
  };
}

class Data {
  String? cId;
  String? cType;
  String? cColor;
  String? cModel;
  String? cNumber;
  String? cDescription;
  String? cPassengersNum;
  String? cLuggageCount;
  String? cImage;
  String? ctname;
  String? cDriverId;
  String? driverFirstName;
  String? driverLastName;
  dynamic driverPhoto;
  dynamic driverLocation;
  String? driverPhone;
  String? cState;
  DateTime? cAddDate;
  dynamic cUpdateDate;

  Data({
     this.cId,
     this.cType,
     this.cColor,
     this.cModel,
     this.cNumber,
     this.cDescription,
     this.cPassengersNum,
     this.cLuggageCount,
     this.cImage,
     this.ctname,
     this.cDriverId,
     this.driverFirstName,
     this.driverLastName,
     this.driverPhoto,
     this.driverLocation,
     this.driverPhone,
     this.cState,
     this.cAddDate,
     this.cUpdateDate,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    cId: json["c_id"],
    cType: json["c_type"],
    cColor: json["c_color"],
    cModel: json["c_model"],
    cNumber: json["c_number"],
    cDescription: json["c_description"],
    cPassengersNum: json["c_passengers_num"],
    cLuggageCount: json["c_luggage_count"],
    cImage: json["c_image"],
    ctname: json["ct_name"],
    cDriverId: json["c_driver_id"],
    driverFirstName: json["driver_first_name"],
    driverLastName: json["driver_last_name"],
    driverPhoto: json["driver_photo"],
    driverLocation: json["driver_location"],
    driverPhone: json["driver_phone"],
    cState: json["c_state"],
    cAddDate: DateTime.parse(json["c_add_date"]),
    cUpdateDate: json["c_update_date"],
  );

  Map<String, dynamic> toJson() => {
    "c_id": cId,
    "c_type": cType,
    "c_color": cColor,
    "c_model": cModel,
    "c_number": cNumber,
    "c_description": cDescription,
    "c_passengers_num": cPassengersNum,
    "c_luggage_count": cLuggageCount,
    "c_image": cImage,
    "ct_name": ctname,
    "c_driver_id": cDriverId,
    "driver_first_name": driverFirstName,
    "driver_last_name": driverLastName,
    "driver_photo": driverPhoto,
    "driver_location": driverLocation,
    "driver_phone": driverPhone,
    "c_state": cState,
    "c_add_date": cAddDate?.toIso8601String(),
    "c_update_date": cUpdateDate,
  };
}
