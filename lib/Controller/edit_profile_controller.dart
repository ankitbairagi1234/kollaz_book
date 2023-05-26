import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kolazz_book/Views/home_screen/New_home1.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Models/get_profile_model.dart';
import '../Models/update_profile_model.dart';
import '../Services/request_keys.dart';
import '../Utils/colors.dart';
import '../Widgets/show_message.dart';
import 'appbased_controller/appbase_controller.dart';

class EditProfileController extends AppBaseController {

  TextEditingController firstnameController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController companynameController = TextEditingController();
  TextEditingController companyphoneController = TextEditingController();
  TextEditingController companyaddressController = TextEditingController();
  TextEditingController companyEmailController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController perdayController = TextEditingController();
  TextEditingController facebookController = TextEditingController();
  TextEditingController instagramController = TextEditingController();
  TextEditingController youtubeController = TextEditingController();
  TextEditingController termsconditionControlletr = TextEditingController();


  ProfileDataList? profiledata;

  String? id;
 String? firstname;
 String? lastname;
  UpdateProfile ? updateprofile;
 String? updatedata;



  @override
  void onInit() {
    // TODO: implement onInit
    getProfile();

    //update();
    super.onInit();
  }

  Future<void>getProfile() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    id = preferences.getString('id');
    setBusy(true);
    try {
      Map<String, String> body = {};
      body[
        RequestKeys.userId] = id!;
      GetProfile res = await api.getProfile(body);
      if (!(res.error ?? true)) {
        profiledata = res.data  ;
        firstname = profiledata?.fname;
        lastname = profiledata?.lname;
         SharedPreferences prefe = await SharedPreferences.getInstance();
         prefe.setString('name',firstname!);
        firstnameController.text = profiledata?.fname ?? "";
        usernameController.text = profiledata?.username ?? "";
        lastnameController.text= profiledata?.lname??'';
        emailController.text= profiledata?.email??'';
        mobileController.text = profiledata?.mobile ??'';
        companynameController.text= profiledata?.companyName??'';
        companyphoneController.text= profiledata?.companyNumber??'';
        companyaddressController.text= profiledata?.companyAddress??'';
        countryController.text= profiledata?.country??'';
        companyEmailController.text= profiledata?.companyLink??'';
        facebookController.text= profiledata?.facebook??'';
        instagramController.text= profiledata?.instagram??'';
        youtubeController.text= profiledata?.youtube??'';

        // ShowMessage.showSnackBar('Server Res', res.message ?? '');
        setBusy(false);
        update();
      }

    } catch (e) {
      ShowMessage.showSnackBar('Server Res', '$e');
    } finally {
      setBusy(false);
      update();

    }
  }

  Future<void>updateProfile() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    id = preferences.getString('id');

    setBusy(true);
    try {
      Map<String, String> body = {};
      body[
      RequestKeys.Id] = id!;
      body[RequestKeys.firstname] = firstnameController.text.trim();
      body[RequestKeys.lastname] = lastnameController.text.trim();
      body[RequestKeys.email] = emailController.text.trim();
      body[RequestKeys.mobile] = mobileController.text.trim();
      body[RequestKeys.companyname] = companynameController.text.trim();
      body[RequestKeys.companyphone] = companyphoneController.text.trim();
      body[RequestKeys.companyaddress] = companyaddressController.text.trim();
      body[RequestKeys.companyEmail] = companyEmailController.text.trim();
      body[RequestKeys.facebookLink] = facebookController.text.trim();
      body[RequestKeys.instagramLink] = instagramController.text.trim();
      body[RequestKeys.youtubeLink] = youtubeController.text.trim();
      body[RequestKeys.tncLink] = termsconditionControlletr.text.trim();
      body[RequestKeys.country] = countryController.text.trim();
      body[RequestKeys.profileImage] = imageFile!.path;
      body[RequestKeys.companyImage] = imageFile2!.path;
      UpdateProfile res = await api.updateProfileApi(body);

      print("_______________________${res.status}");

      if(res.status == 'success' ) {
        updatedata = res.message?? "";
        print('this is message------>${res.message}');
        Fluttertoast.showToast(msg:res.message ?? '' );
        ShowMessage.showSnackBar('Server Res', res.message ?? '');
        setBusy(false);
        Get.to(Homepage());
        update();
      }

    } catch (e) {
      ShowMessage.showSnackBar('Server Res', '$e');
    } finally {
      setBusy(false);
      update();
    }
  }

  File? imageFile;
  File? imageFile2;
  String? imagePath;
  final _picker = ImagePicker();

  void Dialoguebox(String type){
    Get.defaultDialog(
        title:'Select Image',
        backgroundColor: Colors.white,
        titleStyle: TextStyle(color:AppColors.back),
        radius: 10,
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              onPressed: () {
                _getFromCamera(type);
              },
              child:Text('Camera'),
            ),
            const SizedBox(width: 15,),
            ElevatedButton(
              onPressed: (){
                _getFromGallery(type);
              },
              child:const Text('Gallery'),
            ),
          ],
        )
    );

  }

  _getFromGallery(String type) async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
    );
    if (pickedFile != null) {
      if(type=='profile') {
        imageFile = File(pickedFile.path);
      }else {
        imageFile2 = File(pickedFile.path);
      }
      print('image======${imageFile}');
      Get.back();
      update();
    }

  }
  _getFromCamera(String type) async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.camera,
    );
    if (pickedFile != null) {
      if(type=='profile') {
        imageFile = File(pickedFile.path);
      }else {
        imageFile2 = File(pickedFile.path);
      }
      Get.back();
      update();
    }
  }

}