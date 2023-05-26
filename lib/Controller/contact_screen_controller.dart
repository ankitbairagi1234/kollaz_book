import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../Models/Type_of_photography_model.dart';
import '../Models/add_clientmodel.dart';
import '../Models/add_photographermodel.dart';
import '../Models/getphotographer_clientmodel.dart';
import '../Services/request_keys.dart';
import '../Widgets/show_message.dart';
import 'appbased_controller/appbase_controller.dart';

class addPhotographerController extends AppBaseController {

  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController photogreaphertypeController = TextEditingController();
  TextEditingController companyController = TextEditingController();
  TextEditingController perdayController = TextEditingController();

  TextEditingController searchController =  TextEditingController();



  String? userData;
  AddPhotographer? addPhotographer;

  String? id;
  Categories? categoryValue;
  String? newValue;


  Future<void>AddPhotographerr() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    id = preferences.getString('id');
    setBusy(true);
    try {
      Map<String, String> body = {};

      body[RequestKeys.firstname] = firstnameController.text.trim();
      body[RequestKeys.lastname] = lastnameController.text.trim();
      body[RequestKeys.city] = cityController.text.trim();
      body[RequestKeys.mobile] = mobileController.text.trim();
      body[RequestKeys.photographertype] =categoryValue?.resId.toString() ?? '';
      body[RequestKeys.companyname] = companyController.text.trim();
      body[RequestKeys.perdaycharge] = perdayController.text.trim();
      body[RequestKeys.userId] = id!;

      print("This is request_________________________${body}");


      AddPhotographer res = await api.addPhotographeApi(body);
      if (!(res.error ?? true)) {
        userData =res.message ;
        print('this is message------>${res.message}');
         Fluttertoast.showToast(msg:res.message ?? '' );
        ShowMessage.showSnackBar('Server Res', res.message ?? '');
        setBusy(false);
        onTapClear();
        getClientPhotographer();

        Get.back();

        update();
      }

    } catch (e) {
      ShowMessage.showSnackBar('Server Res', '$e');
    } finally {
      setBusy(false);
      update();
    }
  }

  String? clientdata;
  Addclientmodel? addClient;

  Future<void>AddClient() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    id = preferences.getString('id');
    setBusy(true);
    try {
      Map<String, String> body = {};
      body[RequestKeys.firstname] = firstnameController.text.trim();
      body[RequestKeys.lastname] = lastnameController.text.trim();
      body[RequestKeys.city] = cityController.text.trim();
      body[RequestKeys.mobile] = mobileController.text.trim();
      body[RequestKeys.userId] = id!;



      Addclientmodel res = await api.addClientApi(body);
      if (!(res.error ?? true)) {
        clientdata =res.message ;
        print('this is message------>${res.message}');
        Fluttertoast.showToast(msg:res.message ?? '' );
        ShowMessage.showSnackBar('Server Res', res.message ?? '');
        setBusy(false);
        onTapClear();
        getClientPhotographer();
        Get.back();
        update();
      }

    } catch (e) {
      ShowMessage.showSnackBar('Server Res', '$e');
    } finally {
      setBusy(false);
      update();
    }
  }

  List<getPhotoClientData> getphotographetClient = [];

  bool isSelected = false;
  String client = 'client';
  String photographers = 'photographers';
  Future<void>getClientPhotographer() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    id = preferences.getString('id');
    setBusy(true);
    try {
      Map<String, String> body = {};
      body[RequestKeys.userId] = id!;
      body[RequestKeys.type] = isSelected ? photographers  : client ;
      update();
      GetPhotographerclient res = await api.getPhtographerclintApi(body);

      if(res.status == "1"){

        getphotographetClient = res.data ??[];
        print('${getphotographetClient.first.firstName}___________');
        update();


        // Fluttertoast.showToast(msg:res.message ?? '' );
        // ShowMessage.showSnackBar('Server Res', res.msg ?? '');
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

  List<Categories> typeofPhotographyEvent = [];

  Future<void>GateEventType() async {
    setBusy(true);
    try {
      Map<String, String> body = {};
      //body[RequestKeys.userId] = id!;
      TypeofPhotography res = await api.getEventstypeApi(body);

      if(res.status == 1){
        typeofPhotographyEvent = res.categories ??[];
        print('${typeofPhotographyEvent.first.resName}thisisres_____________________');
        update();

        // Fluttertoast.showToast(msg:res.message ?? '' );
        // ShowMessage.showSnackBar('Server Res', res.msg ?? '');
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

  searchTypes(String value) {
    if (value.isEmpty) {
      GateEventType();
      update();
    } else {
      final suggestions = getphotographetClient.where((element) {
        final photographer = element.firstName!.toLowerCase();
        print('___element.name_______${element.firstName}_________');
        final input = value;
        return photographer.contains(input);
      }).toList();
      getphotographetClient = suggestions;
      update();
    }
  }
  onSearchTextChanged(String text) async {
    typeofPhotographyEvent.clear();
    if (text.isEmpty) {
      update();
      return;
    }
    typeofPhotographyEvent.forEach((userDetail) {
      if (userDetail.resName!.contains(text))
        typeofPhotographyEvent.add(userDetail);
    });
    update();

  }



  void onTapClear(){
    firstnameController.clear();
    lastnameController.clear();
    mobileController.clear();
    cityController.clear();
    photogreaphertypeController.clear();
    companyController.clear();
    perdayController.clear();
  }
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getClientPhotographer();
    GateEventType();
  }
}