
import 'dart:convert';

ProfileModel ProfileModelFromJson(String str) => ProfileModel.fromJson(json.decode(str));

String ProfileModelToJson(ProfileModel data) => json.encode(data.toJson());

class ProfileModel {
  String? msg;

  ProfileModel({
     this.msg,
  });

  factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
    msg: json["msg"],
  );

  Map<String, dynamic> toJson() => {
    "msg": msg,
  };
}