import 'dart:convert';

ChangePasswordModel ChangePasswordModelFromJson(String str) => ChangePasswordModel.fromJson(json.decode(str));

String ChangePasswordModelToJson(ChangePasswordModel data) => json.encode(data.toJson());

class ChangePasswordModel {
  String? msg;
  int? status;

  ChangePasswordModel({
    this.msg,
     this.status,
  });

  factory ChangePasswordModel.fromJson(Map<String, dynamic> json) => ChangePasswordModel(
    msg: json["msg"],
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "msg": msg,
    "status": status,
  };
}