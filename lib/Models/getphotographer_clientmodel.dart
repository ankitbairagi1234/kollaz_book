// To parse this JSON data, do
//
//     final getPhotographerclient = getPhotographerclientFromJson(jsonString);

import 'dart:convert';

GetPhotographerclient getPhotographerclientFromJson(String str) => GetPhotographerclient.fromJson(json.decode(str));

String getPhotographerclientToJson(GetPhotographerclient data) => json.encode(data.toJson());

class GetPhotographerclient {
  String? status;
  String? msg;
  List<getPhotoClientData> ? data;

  GetPhotographerclient({
    this.status,
    this.msg,
    this.data,
  });

  factory GetPhotographerclient.fromJson(Map<String, dynamic> json) => GetPhotographerclient(
    status: json["status"],
    msg: json["msg"],
    data: List<getPhotoClientData>.from(json["data"].map((x) => getPhotoClientData.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "msg": msg,
    "setting": List<dynamic>.from(data!.map((x) => x.toJson())),
  };
}

class getPhotoClientData {
  String? id;
  String? firstName;
  String? lastName;
  String? city;
  String? mobile;
  dynamic photographerType;
  dynamic compnyName;
  dynamic perDayCharges;
  String? type_photographer;
  String? type;
  String? status;
  DateTime? createdAt;
  String? userId;

  getPhotoClientData({
    this.id,
    this.firstName,
    this.lastName,
    this.city,
    this.mobile,
   this.photographerType,
    this.compnyName,
    this.perDayCharges,
    this.type_photographer,
    this.type,
    this.status,
    this.createdAt,
    this.userId,
  });

  factory getPhotoClientData.fromJson(Map<String, dynamic> json) => getPhotoClientData(
    id: json["id"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    city: json["city"],
    mobile: json["mobile"],
   photographerType: json["photographer_type"],
    compnyName: json["compny_name"],
    perDayCharges: json["per_day_charges"],
    type_photographer : json ["type_photographer"],
    type: json["type"],
    status: json["status"],
    createdAt: DateTime.parse(json["created_at"]),
    userId: json["user_id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "first_name": firstName,
    "last_name": lastName,
    "city": city,
    "mobile": mobile,
    "photographer_type": photographerType,
    "compny_name": compnyName,
    "per_day_charges": perDayCharges,
    "type_photographer" : type_photographer,
    "type": type,
    "status": status,
    "created_at": createdAt?.toIso8601String(),
    "user_id": userId,
  };
}
