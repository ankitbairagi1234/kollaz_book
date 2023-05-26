// To parse this JSON data, do
//
//     final getquatationModel = getquatationModelFromJson(jsonString);

import 'dart:convert';

GetquatationModel getquatationModelFromJson(String str) => GetquatationModel.fromJson(json.decode(str));

String getquatationModelToJson(GetquatationModel data) => json.encode(data.toJson());

class GetquatationModel {
  String? status;
  String? msg;
  List<Getqutation>? setting;

  GetquatationModel({
    this.status,
    this.msg,
    this.setting,
  });

  factory GetquatationModel.fromJson(Map<String, dynamic> json) => GetquatationModel(
    status: json["status"],   
    msg: json["msg"],
    setting: List<Getqutation>.from(json["setting"].map((x) => Getqutation.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "msg": msg,
    "setting": List<dynamic>.from(setting!.map((x) => x.toJson())),
  };
}

class Getqutation {
  String? id;
  String? clientName;
  String? city;
  String? qid;
  String? userId;
  String? output;
  String? amount;
  String? type;

  Getqutation({
    this.id,
    this.clientName,
    this.city,
    this.qid,
    this.userId,
    this.output,
    this.amount,
    this.type,
  });

  factory Getqutation.fromJson(Map<String, dynamic> json) => Getqutation(
    id: json["id"],
    clientName: json["client_name"],
    city: json["city"],
    qid: json["qid"],
    userId: json["user_id"],
    output: json["output"],
    amount: json["amount"],
    type: json["type"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "client_name": clientName,
    "city": city,
    "qid": qid,
    "user_id": userId,
    "output": output,
    "amount": amount,
    "type": type,
  };
}
