// To parse this JSON data, do
//
//     final loginResponseModel = loginResponseModelFromJson(jsonString);

import 'dart:convert';

LoginResponseModel loginResponseModelFromJson(String str) => LoginResponseModel.fromJson(json.decode(str));

String loginResponseModelToJson(LoginResponseModel data) => json.encode(data.toJson());

class LoginResponseModel {
  bool? error;
  String? message;
  Data? data;

  LoginResponseModel({this.error, this.message, this.data});

  LoginResponseModel.fromJson(Map<String, dynamic> json) {
    error = json['error'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['error'] = this.error;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? id;
  String? username;
  String? email;
  String? fname;
  String? lname;
  String? countrycode;
  String? currency;
  String? mobile;
  String? companyLogo;
  String? companyLink;
  String? password;
  String? profilePic;
  Null? facebook;
  Null? note;
  Null? instagram;
  Null? youtube;
  Null? companyName;
  Null? companyNumber;
  String? type;
  String? isGold;
  String? address;
  Null? companyAddress;
  String? city;
  String? country;
  String? deviceToken;
  String? date;
  String? agreecheck;
  String? otp;
  String? status;
  String? wallet;
  Null? oauthProvider;
  Null? oauthUid;
  Null? lastLogin;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.id,
        this.username,
        this.email,
        this.fname,
        this.lname,
        this.countrycode,
        this.currency,
        this.mobile,
        this.companyLogo,
        this.companyLink,
        this.password,
        this.profilePic,
        this.facebook,
        this.note,
        this.instagram,
        this.youtube,
        this.companyName,
        this.companyNumber,
        this.type,
        this.isGold,
        this.address,
        this.companyAddress,
        this.city,
        this.country,
        this.deviceToken,
        this.date,
        this.agreecheck,
        this.otp,
        this.status,
        this.wallet,
        this.oauthProvider,
        this.oauthUid,
        this.lastLogin,
        this.createdAt,
        this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    email = json['email'];
    fname = json['fname'];
    lname = json['lname'];
    countrycode = json['countrycode'];
    currency = json['currency'];
    mobile = json['mobile'];
    companyLogo = json['company_logo'];
    companyLink = json['company_link'];
    password = json['password'];
    profilePic = json['profile_pic'];
    facebook = json['facebook'];
    note = json['note'];
    instagram = json['instagram'];
    youtube = json['youtube'];
    companyName = json['company_name'];
    companyNumber = json['company_number'];
    type = json['type'];
    isGold = json['isGold'];
    address = json['address'];
    companyAddress = json['company_address'];
    city = json['city'];
    country = json['country'];
    deviceToken = json['device_token'];
    date = json['date'];
    agreecheck = json['agreecheck'];
    otp = json['otp'];
    status = json['status'];
    wallet = json['wallet'];
    oauthProvider = json['oauth_provider'];
    oauthUid = json['oauth_uid'];
    lastLogin = json['last_login'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['username'] = this.username;
    data['email'] = this.email;
    data['fname'] = this.fname;
    data['lname'] = this.lname;
    data['countrycode'] = this.countrycode;
    data['currency'] = this.currency;
    data['mobile'] = this.mobile;
    data['company_logo'] = this.companyLogo;
    data['company_link'] = this.companyLink;
    data['password'] = this.password;
    data['profile_pic'] = this.profilePic;
    data['facebook'] = this.facebook;
    data['note'] = this.note;
    data['instagram'] = this.instagram;
    data['youtube'] = this.youtube;
    data['company_name'] = this.companyName;
    data['company_number'] = this.companyNumber;
    data['type'] = this.type;
    data['isGold'] = this.isGold;
    data['address'] = this.address;
    data['company_address'] = this.companyAddress;
    data['city'] = this.city;
    data['country'] = this.country;
    data['device_token'] = this.deviceToken;
    data['date'] = this.date;
    data['agreecheck'] = this.agreecheck;
    data['otp'] = this.otp;
    data['status'] = this.status;
    data['wallet'] = this.wallet;
    data['oauth_provider'] = this.oauthProvider;
    data['oauth_uid'] = this.oauthUid;
    data['last_login'] = this.lastLogin;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
