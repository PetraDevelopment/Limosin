
import 'dart:convert';

AddCarModel addCarModelFromJson(String str) => AddCarModel.fromJson(json.decode(str));

String addCarModelToJson(AddCarModel data) => json.encode(data.toJson());

class AddCarModel {
  String? data;
  String? msg;
  int? status;

  AddCarModel({
     this.data,
     this.msg,
     this.status,
  });

  factory AddCarModel.fromJson(Map<String, dynamic> json) => AddCarModel(
    data: json["data"],
    msg: json["msg"],
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "data": data,
    "msg": msg,
    "status": status,
  };
}