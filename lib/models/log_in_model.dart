// import 'dart:convert';
//
// LogInModel logInModelFromJson(String str) =>
//     LogInModel.fromJson(json.decode(str));
//
// String logInModelToJson(LogInModel data) => json.encode(data.toJson());
//
// class LogInModel {
//   dynamic message;
//   int? status;
//
//   LogInModel({
//     this.message,
//     this.status,
//   });
//
//   factory LogInModel.fromJson(Map<String, dynamic> json) => LogInModel(
//   message:json["status"]==200?Message.fromJson(json["message"]): json["message"],
//    //message:json["message"],
//     status: json["status"],
//   );
//
//   Map<String, dynamic> toJson() => {
//   "message": message is Message ? message.toJson() : message,
//    // "message": status ==200 ? message.toJson() : message,
//     "status": status,
//   };
// }
//
// class Message {
//   String? errorMsg;
//   String? idV;
//   String? nameV;
//   String? photoV;
//
//   Message({
//     this.errorMsg,
//     this.idV,
//     this.nameV,
//     this.photoV,
//   });
//
//   factory Message.fromJson(Map<String, dynamic> json) => Message(
//     errorMsg: json["@ErrorMsg"],
//     idV: json["@id_V"],
//     nameV: json["@name_V"],
//     photoV: json["@photo_V"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "@ErrorMsg": errorMsg,
//     "@id_V": idV,
//     "@name_V": nameV,
//     "@photo_V": photoV,
//   };
// }
import 'dart:convert';

LogInModel logInModelFromJson(String str) =>
    LogInModel.fromJson(json.decode(str));

String logInModelToJson(LogInModel data) => json.encode(data.toJson());

class LogInModel {
  dynamic? message;
  int? status;

  LogInModel({
 this.message,
 this.status,
  });

  factory LogInModel.fromJson(Map<String, dynamic> json) => LogInModel(
    message:json["status"]==200?Message.fromJson(json["message"]): json["message"],
    //message:json["message"],
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "message": message is Message ? message?.toJson() : message,
    // "message": status ==200 ? message.toJson() : message,
    "status": status,
  };
}

class Message {
  String? errorMsg;
  String? idV;
  String? firstNameV;
  String? lastNameV;
  String? photoV;
  String? phoneV;
  String? useremailV;

  Message({
   this.errorMsg,
     this.idV,
     this.firstNameV,
     this.lastNameV,
     this.photoV,
     this.phoneV,
     this.useremailV,
  });

  factory Message.fromJson(Map<String, dynamic> json) => Message(
    errorMsg: json["@ErrorMsg"],
    idV: json["@id_V"],
    firstNameV: json["@first_name_V"],
    lastNameV: json["@last_name_V"],
    photoV: json["@photo_V"],
    phoneV: json["@phone_V"],
    useremailV: json["@useremail_V"],
  );

  Map<String, dynamic> toJson() => {
    "@ErrorMsg": errorMsg,
    "@id_V": idV,
    "@first_name_V": firstNameV,
    "@last_name_V": lastNameV,
    "@photo_V": photoV,
    "@phone_V": phoneV,
    "@useremail_V": useremailV,
  };
}