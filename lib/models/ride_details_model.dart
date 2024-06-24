//     final rideDetailsModel = rideDetailsModelFromJson(jsonString);

import 'dart:convert';

RideDetailsModel rideDetailsModelFromJson(String str) => RideDetailsModel.fromJson(json.decode(str));

String rideDetailsModelToJson(RideDetailsModel data) => json.encode(data.toJson());

class RideDetailsModel {
  String? msg;
  int? status;

  RideDetailsModel({
     this.msg,
     this.status,
  });

  factory RideDetailsModel.fromJson(Map<String, dynamic> json) => RideDetailsModel(
    msg: json["msg"],
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "msg": msg,
    "status": status,
  };
}