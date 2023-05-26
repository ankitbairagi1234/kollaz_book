

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:kolazz_book/Controller/ad_new_job_Controller.dart';

import '../../Utils/colors.dart';

class addNewJob extends StatefulWidget {
  const addNewJob({Key? key}) : super(key: key);

  @override
  State<addNewJob> createState() => _freelancing_job_updateState();
}

class _freelancing_job_updateState extends State<addNewJob> {
  String? _chosenValue;
  var item = ['Kaushik Prajapati', ' Prajapati', 'Kaushik Prajapati',];
  String? _cityValue;
  var item2 = ['Mumbai', ' indore', 'delhi ',];
  String? _photography;
  var item3 = ['Mumbai', ' indore', 'delhi ',];
  @override


  Widget build(BuildContext context) {
    return GetBuilder(
      init: AddJobController(),
      builder: (controller) {
        return  Scaffold(backgroundColor: AppColors.backgruond,
            appBar: AppBar(
              backgroundColor: Color(0xff303030),
              leading: InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back_ios, color: Color(0xff1E90FF))),
              actions: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(right:14),
                    child: Text("Add Freelancing Job", style: TextStyle(fontSize: 14, color:Color(0xff1E90FF), fontWeight: FontWeight.bold)
                    ),
                  ),
                ),
              ],
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 15),
              child: SingleChildScrollView(
                child: Form(
                  key: controller.formKey,
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff3B3B3B),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Auto Job ID",
                                    style: TextStyle(color: Color(0xff42ACFE),fontWeight: FontWeight.bold),),
                                  Container(width:180,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: AppColors.backgruond,
                                    ),

                                    child: Align(alignment: Alignment.centerLeft, child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("FJ001",style: TextStyle(color: AppColors.whit),),
                                    )),)
                                ],
                              ),

                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Photograher",
                                    style: TextStyle(color: Color(0xff42ACFE),fontWeight: FontWeight.bold),),
                                  Container(
                                    width:180,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: AppColors.backgruond,
                                    ),
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton(
                                        elevation: 0,
                                        underline: Container(),
                                        isExpanded: true,
                                        value: _chosenValue,
                                        icon: Icon(Icons.keyboard_arrow_down,size: 40,color: Color(0xff3B3B3B),),
                                        hint: Align(alignment: Alignment.centerLeft,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text("Kaushik Prajapati", style: TextStyle(
                                                color:AppColors.whit
                                            ),),
                                          ),
                                        ),
                                        items:item.map((String items) {
                                          return DropdownMenuItem(
                                              value: items,
                                              child: Text(items)
                                          );
                                        }
                                        ).toList(),
                                        onChanged: (String? newValue){
                                          setState(() {
                                            _chosenValue = newValue!;
                                          });
                                        },

                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("City/Venue",
                                    style: TextStyle(color: Color(0xff42ACFE),fontWeight: FontWeight.bold),),
                                  Container(width:180,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: AppColors.backgruond,
                                    ),
                                    child: Align(alignment: Alignment.centerLeft, child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("Mumbai",style: TextStyle(color: AppColors.whit),),
                                    )),)
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Events",
                                    style: TextStyle(color: Color(0xff42ACFE),fontWeight: FontWeight.bold),),
                                  Container(
                                    width:180,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: AppColors.backgruond,
                                    ),
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton(
                                        elevation: 0,
                                        underline: Container(),
                                        isExpanded: true,
                                        value: _cityValue,
                                        icon: Icon(Icons.keyboard_arrow_down,size: 40,color: Color(0xff3B3B3B),),
                                        hint: Align(alignment: Alignment.centerLeft,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text("Mumbai", style: TextStyle(
                                                color:AppColors.whit
                                            ),),
                                          ),
                                        ),
                                        items:item2.map((String items) {
                                          return DropdownMenuItem(
                                              value: items,
                                              child: Text(items)
                                          );
                                        }
                                        ).toList(),
                                        onChanged: (String? newValue){
                                          setState(() {
                                            _cityValue = newValue!;
                                          });
                                        },

                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),
                      ),
                      SizedBox(height: 12,),
                      Container(

                        height: 90,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color:Color(0xff8B8B8B),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Column(
                            children: [
                              Align(alignment: Alignment.topCenter, child: Text("Type Of Photography",style: TextStyle(fontWeight: FontWeight.bold,color: AppColors.whit,fontSize: 14),)),
                              SizedBox(height: 8,),
                              Container(height: 35,
                                width:200 ,

                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color(0xffbfbfbf),
                                ),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton(
                                    elevation: 0,
                                    underline: Container(),
                                    isExpanded: true,
                                    value: _photography,
                                    icon: Icon(Icons.keyboard_arrow_down,size: 40,color: Color(0xff3B3B3B),),
                                    hint: Align(alignment: Alignment.centerLeft,
                                      child: Center(
                                        child: Text("candid Photography", style: TextStyle(
                                            color:AppColors.whit,fontStyle: FontStyle.italic
                                        ),),
                                      ),
                                    ),
                                    items:item3.map((String items) {
                                      return DropdownMenuItem(
                                          value: items,
                                          child: Text(items)
                                      );
                                    }
                                    ).toList(),
                                    onChanged: (String? newValue){
                                      setState(() {
                                        _photography = newValue!;
                                      });
                                    },

                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 12,),
                      Container(height: 45,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color:Color(0xff42ACFE),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Date",style: TextStyle(fontWeight: FontWeight.bold,color: AppColors.whit),),
                              Text("Time",style: TextStyle(fontWeight: FontWeight.bold,color: AppColors.whit),),
                              Text("Amount",style: TextStyle(fontWeight: FontWeight.bold,color: AppColors.whit),),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 200,
                        child: Expanded(
                          child: ListView.builder(
                            // physics: const NeverScrollableScrollPhysics(),
                            itemCount: controller.adMore,
                            itemBuilder: (context, index) {
                            return  Container(
                              height: 45,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color:Color(0xff8B8B8B),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      onTap : (){
                                        controller.selectDate(context);
                                      },
                                      child: Container(
                                        padding: EdgeInsets.symmetric(horizontal: 8,vertical: 5),
                                        decoration: const BoxDecoration(
                                          // color:AppColors.datecontainer,
                                        ),
                                        child: Text(
                                          controller. selectedDate != null
                                              ? ' ${DateFormat('MM-dd-yyyy').format(controller.selectedDate!)}'
                                              : 'Select Date ',style: TextStyle(color: AppColors.textclr,fontSize: 12),
                                        ),
                                      ),
                                    ),
                                    // Text("(MM-DD-YYYY)",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: AppColors.whit,fontStyle: FontStyle.italic),),
                                    InkWell(
                                      onTap: (){
                                        controller.selectTime(context);
                                      },
                                      child: Container(
                                        padding: EdgeInsets.symmetric(horizontal: 8,vertical: 5),
                                        decoration: const BoxDecoration(
                                          // color:AppColors.datecontainer,
                                        ),
                                        child: Text(
                                          controller. selectedTime != null
                                              ? ' ${controller.selectedTime.format(context)} to ${controller.selectedTime2.format(context)}'
                                              : 'Select Time For Bookings',style: TextStyle(color: AppColors.textclr,fontSize: 12),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          // color:  Color(0xffbfbfbf),
                                          borderRadius: BorderRadius.circular(10)),
                                      // height: 35,
                                      width: 100,
                                      child: TextFormField(
                                        style: TextStyle(color: AppColors.textclr),
                                        // controller: controller.outputController,
                                        keyboardType: TextInputType.number,
                                        validator: (value) => value!.isEmpty ? 'Amount cannot be blank':null,
                                        decoration: InputDecoration(
                                            hintText: 'Enter Amount',hintStyle: TextStyle(color: AppColors.textclr,fontSize: 14),
                                            border: InputBorder.none,
                                            contentPadding: EdgeInsets.only(left:8,bottom: 15)
                                        ),
                                      ),
                                    ),
                                    // Text("Enter Time Optional",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: AppColors.whit,fontStyle: FontStyle.italic),),
                                    // Text("Enter Amount",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: AppColors.whit,fontStyle: FontStyle.italic),),
                                  ],
                                ),
                              ),
                            );
                          },),
                        ),
                      ),

                      InkWell(
                        onTap: (){
                          if(controller.formKey.currentState!.validate() && controller.selectedDate! == null) {
                            controller.increment();
                          }
                        },
                        child: Container(height: 45,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color:Color(0xff8B8B8B),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: (){
                                if(controller.formKey.currentState!.validate()) {
                                  controller.increment();
                                }
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(Icons.add_circle_outline,color:Color(0xff42ACFE) ,size: 30,),
                                  Text("Add More",style: TextStyle(color:Color(0xff42ACFE),fontWeight: FontWeight.bold),)
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      Column(
                        children: [
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Align(alignment: Alignment.centerLeft, child: Text("Total",style: TextStyle(fontWeight: FontWeight.bold,color:AppColors.whit),)),
                              Container(height: 30,width: 230,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color(0xffbfbfbf),
                                ),
                                child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Text("=Sum(Amount)",style: TextStyle(color: AppColors.whit,fontStyle: FontStyle.italic),)),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 20,),
                      Align(
                        alignment: Alignment.center,
                        child:   InkWell(
                          onTap: (){
                            // Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()));
                          },
                          child: Container(
                              height: 55,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color:  AppColors.pdfbtn),
                              width: MediaQuery.of(context).size.width/1.5,
                              child: Center(child: Text("Add", style: TextStyle(fontSize: 18, color: AppColors.textclr)))
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                    ],
                  ),
                ),
              ),
            ));
      },);
  }

}
