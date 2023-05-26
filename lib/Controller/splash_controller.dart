
import 'dart:async';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:kolazz_book/Views/home_screen/New_home1.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Route_managements/routes.dart';
import 'appbased_controller/appbase_controller.dart';

class SplashController extends AppBaseController {

  String? id;
  Future<void> onInit() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    id = preferences.getString('id');

    // TODO: implement onInit
      Timer( const Duration(seconds: 3),(){
        print("_________________${id}");

        if(id == null){
          Timer(const Duration( seconds: 3), (){
          Get.offNamed(loginScreen);
          });
        }else{
          Get.offNamed(dashbord);
        }
      });
      super.onInit();
    // TODO: implement initState

  }
}